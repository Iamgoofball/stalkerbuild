#define DMG_TYPE_GIB 1
#define DMG_TYPE_ENERGY 2
#define DMG_TYPE_BURN 4
#define DMG_TYPE_BRAIN 8
#define DMG_TYPE_RADIATION 16
#define DMG_TYPE_IGNITION 32
#define DMG_TYPE_BIO 64





/obj/anomaly
	name = "Anomaly"
	var/damage_amount = 0 				//Сколько дамажит
	var/damage_type = DMG_TYPE_ENERGY	//Тип дамага
	var/activated_itcon_state = null 	//Спрайт при активации
	var/cooldown = 5 					//Кулдаун в секундах
	var/incooldown = 0
	var/list/trapped = new/list()
	var/idle_luminosity = 0
	var/activated_luminosity = 0
	var/sound = null
	var/delay = 0
	var/attachedSpawner = null
	var/active_icon_state = null
	var/inactive_icon_state = null;
	icon = 'icons/stalker/effects/anomalies.dmi'
	unacidable = 1
	anchored = 1
	pass_flags = PASSTABLE | PASSGRILLE

/obj/anomaly/New()
	..()
	if(prob(30))
		if(attachedSpawner)
			new attachedSpawner(src)
	icon_state = inactive_icon_state

/obj/anomaly/Crossed(atom/A)
	..()
	if (istype(A,/obj/item/weapon/bolt) || istype(A,/mob/living/carbon) || istype(A,/mob/living/simple_animal/hostile/mutant))
		if (istype(A,/mob/living/simple_animal/hostile/mutant))
			var/mob/living/simple_animal/hostile/mutant/B = A
			if(B.stat == DEAD)
				B.gib()
		if (istype(A,/mob/living/carbon))
			var/mob/living/carbon/M = A
			if(M.stat == DEAD)
				M.gib()
		if(!incooldown)
			icon_state = active_icon_state
			spawn(10)
				icon_state = inactive_icon_state
		if (istype(A,/mob/living/simple_animal/hostile/mutant))
			var/mob/living/simple_animal/hostile/mutant/B = A
			B.adjustBruteLoss(20)
		if (istype(A,/mob/living/carbon))
			var/mob/living/carbon/M = A
			src.trapped.Add(M)
			if(src.trapped.len == 1 && !incooldown)
				src.Think()
		else
			if(!incooldown)
				playsound(src.loc, src.sound, 50, 1)
				src.incooldown = 1
				spawn(src.cooldown * 10)
					src.incooldown = 0
	else
		return

/obj/anomaly/Uncrossed(atom/A)
	..()
	if (istype(A,/mob/living/carbon))
		var/mob/living/carbon/M = A
		src.trapped.Remove(M)

/obj/anomaly/proc/Think()
	playsound(src.loc, src.sound, 50, 1)
	spawn(src.delay * 10)
		for(var/atom/A in src.trapped)
			if(istype(A, /mob/living))
				var/mob/living/carbon/human/M = A
				if(M.stat == DEAD)
					M.gib()
				else
					switch(src.damage_type)
						if(DMG_TYPE_ENERGY)
							M.apply_damage(src.damage_amount, BURN, null, M.getarmor(null, "electro"))
						if(DMG_TYPE_BIO)
							M.apply_damage(src.damage_amount, BURN, null, M.getarmor(null, "bio"))
						if(DMG_TYPE_RADIATION)
							M.rad_act(src.damage_amount)
						if(DMG_TYPE_GIB)
							M.gib()
							trapped.Remove(M)
						if(DMG_TYPE_IGNITION)
							A.fire_act()
	src.set_light(src.activated_luminosity)
	spawn(10)
		src.set_light(src.idle_luminosity)
	src.incooldown = 1
	spawn(src.cooldown * 10)
		src.incooldown = 0
		if(src.trapped.len > 0)
			src.Think()
	return

/obj/anomaly/electro
	name = "anomaly"
	damage_amount = 40
	cooldown = 2
	sound = 'sound/stalker/anomalies/electra_blast1.ogg'
	idle_luminosity = 1
	activated_luminosity = 2
	damage_type = DMG_TYPE_ENERGY
	inactive_icon_state = "electra0"
	active_icon_state = "electra1"

/obj/anomaly/electro/New()
	..()
	src.set_light(luminosity)

/obj/anomaly/tramplin
	name = "anomaly"
	damage_amount = 40
	cooldown = 2
	delay = 1
	sound = 'sound/stalker/anomalies/gravi_blowout1.ogg'
	idle_luminosity = 0
	activated_luminosity = 0
	inactive_icon_state = "tramplin0"
	active_icon_state = "tramplin1"
	damage_type = DMG_TYPE_GIB

/obj/anomaly/jarka
	name = "anomaly"
	cooldown = 20
	sound = 'sound/stalker/anomalies/zharka1.ogg'
	luminosity = 2
	idle_luminosity = 3
	activated_luminosity = 5
	damage_type = DMG_TYPE_IGNITION
	icon = 'icons/stalker/effects/anomalies.dmi'
	inactive_icon_state = "jarka0"
	active_icon_state = "jarka1"

/obj/anomaly/holodec
	name = "anomaly"
	luminosity = 3
	idle_luminosity = 3
	activated_luminosity = 5
	sound = 'sound/stalker/anomalies/buzz_hit.ogg'
	damage_type = DMG_TYPE_BIO
	damage_amount = 30
	icon = 'icons/stalker/effects/anomalies.dmi'
	inactive_icon_state = "holodec"
	active_icon_state = "holodec" //need activation icon

/obj/anomaly/puh
	name = "anomaly"
	sound = 'sound/stalker/anomalies/buzz_hit.ogg'
	damage_type = DMG_TYPE_BIO
	damage_amount = 15
	icon = 'icons/stalker/effects/anomalies.dmi'
	inactive_icon_state = "puh"
	active_icon_state = "puh" //need activation icon

/obj/anomaly/puh/puh2
	icon = 'icons/stalker/effects/anomalies.dmi'
	inactive_icon_state = "puh2"
	active_icon_state = "puh2"

/obj/anomaly/rad 	//Не наносит урона
	name = "anomaly"
	cooldown = 1
	damage_type = DMG_TYPE_RADIATION

/obj/anomaly/fake
	name = "anomaly"

/obj/anomaly/rad/rad_low
	damage_amount = 1

/obj/anomaly/rad/rad_medium
	damage_amount = 5

/obj/anomaly/rad/rad_high
	damage_amount = 20
