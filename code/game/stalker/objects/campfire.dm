/obj/machinery/campfire
	name = "Campfire"
	desc = "�� ������ ������� ���� � �&#255;���� ����."
	icon = 'icons/stalker/stalker.dmi'
	icon_state = "campfire0"
	anchored = 1
	var/firecolor = "#FFAA33"
	var/sound_playing = 0
	var/list/trapped = new/list()
	var/cooldown = 5 					//������� � ��������
	var/incooldown = 0
	var/on = 0
	var/wood = 500

obj/machinery/campfire/barrel
	name = "barrel"
	icon = 'icons/stalker/machinery/bochka.dmi'
	icon_state = "barrel0"
	density = 1


/obj/machinery/campfire/attack_hand(mob/user)
	..()
	if(on)
		user.visible_message("<span class='notice'>[user] ����� ������ �����...</span>", "<span class='notice'>�� ������ ������ �����...</span>")
		if(!do_after(user, 10, 1, src))	return
		user.visible_message("<span class='green'>[user] ������� �����.</span>", "<span class='green'>�� �������� �����.</span>")
		on = !on
		update_icon()
		set_light(0)

/obj/machinery/campfire/update_icon()
	icon_state = "campfire[on]"
	update_state()
	return

/obj/machinery/campfire/barrel/update_icon()
	icon_state = "barrel[on]"
	update_state()
	return

/obj/machinery/campfire/proc/update_state()
	if(on)
		if(!sound_playing)
			sound_playing = 1

	else if(!on)
		sound_playing = 0

/obj/machinery/campfire/proc/RefreshSound()
	for (var/P in player_list)
		var/mob/M = P
		var/turf/turf_source = get_turf(src.loc)
		if(sound_playing)
		 	// Looping through the player list has the added bonus of working for mobs inside containers
			if(!M || !M.client)
				continue
			if(get_dist(M, turf_source) <= 3)
				var/turf/T = get_turf(M)
				if(T && T.z == turf_source.z)
					M.playsound_local(get_turf(M.loc), 'sound/stalker/objects/campfire.ogg', 80, 0, 0, 0, 0, 777, 1)
			else
				M.playsound_local(get_turf(M.loc), null, 80, 0, 0, 0, 0, 777, 1)
		else
			M.playsound_local(get_turf(M.loc), null, 80, 0, 0, 0, 0, 777, 1)

/obj/machinery/campfire/Crossed(atom/A)
	src.trapped.Add(A)
	if(src.trapped.len > 0 && !incooldown)
		src.Think()

obj/machinery/campfire/Uncrossed(atom/A)
	if (istype(A,/mob/living/carbon))
		var/mob/living/carbon/M = A
		src.trapped.Remove(M)

obj/machinery/campfire/proc/Think()
	for(var/A in src.trapped)
		var/mob/living/carbon/M = A
		if(on)
			M.fire_act()
		src.incooldown = 1
		spawn(src.cooldown * 10)
			src.incooldown = 0
			if(src.trapped.len > 0)
				src.Think()

	return

/obj/machinery/campfire/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/stack/sheet/mineral/wood))
		var/target_charge = src.wood + 250
		if(target_charge > 1000)
			if(on)
				user << "����� ����� ���������� &#255;���."
			else
				user << "� ������ ���������� ����."
		else
			if(on)
				user << "�� ��������� ���� � �����. ����� ����� ������ &#255;���."
			else
				user << "�� ��������� ���� � �����."
			src.wood = target_charge
			I.loc = src
	else
		if(I.burn_state == 1)
			if(!on)
				on = !on
				usr.visible_message("[usr] ��������� �����.", "<span class='notice'>�� �������� �����.</span>")
				update_icon()
		else
			if(istype(I, /obj/item/weapon/match))
				var/obj/item/weapon/match/M = I
				if(M.lit == 1 && !on)
					on = !on
					usr.visible_message("[usr] ��������� �����.", "<span class='notice'>�� �������� �����.</span>")
					update_icon()
				else
					if(M.lit == 0 && on)
						M.fire_act()
			else
				if(istype(I, /obj/item/weapon/lighter))
					var/obj/item/weapon/lighter/L = I
					if(L.lit == 1 && !on)
						on = !on
						usr.visible_message("[usr] ��������� �����.", "<span class='notice'>�� �������� �����.</span>")
						update_icon()

				else
					if(on)
						I.fire_act()



obj/machinery/campfire/process()
	src.RefreshSound()
	if(!on || (stat & BROKEN))
		return
	if(on)
		if(src.wood > 750)
			set_light(5, 1, firecolor)
		else
			if(src.wood > 500)
				set_light(4, 1, firecolor)
			else
				if(src.wood > 250)
					set_light(3, 1, firecolor)
				else
					if(src.wood > 0)
						set_light(2, 1, firecolor)

	if(wood < 0)
		on = FALSE
		update_icon()