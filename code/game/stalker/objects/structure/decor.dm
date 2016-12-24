/obj/structure/stalker
	icon = 'icons/stalker/structure/decor.dmi'
	density = 0
	anchored = 1
	layer = 3.1

/obj/structure/stalker/radiation
	name = "radiation sign"
	desc = "���� ���� ����� &#255;��� �� ��&#255; �������."
	icon_state = "radiation_sign"
	density = 1
	pass_flags = LETPASSTHROW

/obj/structure/stalker/radiation/stop
	name = "sign"
	desc = "�� �������� �������� - '����! ��������&#255; ����! ������ ��������!'."
	icon_state = "stop_sign"

/obj/structure/stalker/water
	anchored = 1
	var/busy = 0

/obj/structure/stalker/water/luzha
	name = "puddle"
	desc = "�����������&#255; ����. ����, ����� ��, �� ����&#255; �����&#255;."
	icon_state = "luzha"

/obj/structure/stalker/water/luzha/kap
	name = "puddle"
	desc = "�����������&#255; ����. ����, ����� ��, �� ����&#255; �����&#255;. ���-���."
	icon_state = "luzha_kap"

/obj/structure/stalker/truba
	name = "pipe"
	desc = "�����&#255; �����&#255; �����."
	icon_state = "truba"

/obj/structure/stalker/truba/vert
	icon_state = "truba_v"

/obj/structure/stalker/bochka
	name = "barrel"
	desc = "�������&#255; ���������������&#255; �����."
	icon_state = "bochka"
	density = 1

/obj/structure/stalker/bochka/red
	icon_state = "red_bochka"

/obj/structure/stalker/water/bochka
	name = "Barrel"
	desc = "�������&#255; �����, ����������&#255;, ������ �����, �������� �����."
	icon_state = "bochka_s_vodoy"
	density = 1

/obj/structure/stalker/water/bochka/kap
	name = "Barrel"
	desc = "�������&#255; �����, ����������&#255;, ������ �����, �������� �����. ���-���."
	icon_state = "diryavaya_bochka_s_vodoy"


/obj/structure/stalker/rozetka
	name = "socket"
	desc = "�����&#255; ��������&#255; �������."
	icon_state = "rozetka"

/obj/structure/stalker/krest
	name = "cross"
	desc = "�����&#255;���� �����."
	icon_state = "krest"
	density = 0

/obj/structure/stalker/krest/bereza
	icon_state = "krest_bereza"

/obj/structure/stalker/komod
	name = "komod"
	desc = "������������ �����&#255;���� �����."
	icon_state = "komod"
	density = 1
	pass_flags = LETPASSTHROW

/obj/structure/stalker/switcher
	name = "switcher"
	desc = "����������� �����������.\n<span class='notice'>�� ��������� ������� ��� � ��������� �� ��������� ����&#255; �����.</span>"
	icon_state = "vikluchatel"

/obj/structure/stalker/doski
	name = "planks"
	desc = "��������� �����. ������������ ���-���� �� ��� �� ��������&#255;."
	icon_state = "doski_oblomki"
	layer = 2.8
	pass_flags = LETPASSTHROW

/obj/structure/stalker/doski/doski2
	icon_state = "doski_oblomki2"

/obj/structure/stalker/doski/doski3
	icon_state = "doski_oblomki3"

/obj/structure/stalker/doski/doski4
	icon_state = "doski_oblomki4"

/obj/structure/stalker/battery
	name = "battery"
	desc = "�����&#255; �����������&#255; ������&#255;. �����-�� ��������� ����, ������ - ������ ��������&#255; �������."
	icon_state = "gazovaya_truba"

/obj/structure/stalker/vanna
	name = "bath"
	desc = "�����&#255; �������&#255; �����. ������ ����������."
	icon_state = "vanna"
	density = 1

/obj/structure/stalker/list
	name = "stain-roof sheet"
	desc = "�&#255;���� ����&#255;���� ����������� ����. ������������ ��� ��� ����� �� ��������&#255;."
	icon_state = "list_zhesti"

/obj/structure/stalker/yashik
	name = "wooden box"
	icon_state = "yashik"
	density = 1

/obj/structure/stalker/yashik/yaskik_a
	name = "crate"
	icon_state = "yashik_a"

/obj/structure/stalker/yashik/yaskik_a/big
	icon = 'icons/stalker/structure/decorations_32x64.dmi'
	icon_state = "crate"
	opacity = 1

/obj/structure/stalker/propane
	name = "propane"
	desc = "������ � ��������. ����������."
	icon = 'icons/stalker/structure/decorations_32x64.dmi'
	icon_state = "propane"

/obj/structure/stalker/stolb
	name = "pillar"
	icon = 'icons/stalker/structure/decorations_32x64.dmi'
	icon_state = "stolb"

/obj/structure/stalker/propane/dual
	icon_state = "propane_dual"

/obj/structure/stalker/pen
	name = "stump"
	desc = "������� ����. �� ������, �� ������."
	icon_state = "pen"

/obj/structure/stalker/radio
	name = "radio"
	desc = "������ ��������� ��������� �����"
	icon_state = "radio"

/obj/structure/stalker/apc
	name = "switchboard"
	desc = "������ ������������."
	icon_state = "apc"

/obj/structure/stalker/apc/open
	icon_state = "apc1"

/obj/structure/stalker/apc/open2
	icon_state = "apc2"

/obj/structure/stalker/cover
	icon = 'icons/stalker/structure/decorations_64x32.dmi'
	icon_state = "cover"

/obj/structure/stalker/porog
	name = "step"
	icon = 'icons/stalker/structure/decor.dmi'
	icon_state = "porog1"
	layer = 2.9

/obj/structure/stalker/porog/porog2
	icon = 'icons/stalker/structure/decor.dmi'
	icon_state = "porog2"

/obj/structure/stalker/televizor
	name =  "televisor"
	desc = "������ ��������� ���������."
	icon_state = "TV"
	density = 1

/obj/structure/stalker/clocks
	name =  "clocks"
	desc = "������������."
	icon = 'icons/stalker/prishtina/decorations_32x32.dmi'
	icon_state = "clocks"

/obj/structure/stalker/painting
	icon = 'icons/stalker/prishtina/decorations_32x32.dmi'

/obj/structure/stalker/painting/gorbachev
	name = "painting"
	desc = "������� ���������� ��������&#255; �� ����."
	icon_state = "gorbachev"

/obj/structure/stalker/painting/stalin
	name = "painting"
	desc = "������� ������� ��������&#255; �� ����."
	icon_state = "stalin"

/obj/structure/stalker/painting/lenin
	name = "painting"
	desc = "������� ������� ��������&#255; �� ����."
	icon_state = "lenin"

/obj/structure/stalker/televizor/broken
	icon_state = "TV_b"
	name =  "Televisor"
	desc = "������ �������� ��������� ���������."

/obj/structure/stalker/bigyashik
	name = "Metal Container"
	icon = 'icons/stalker/structure/yashiki/decorations_64x64.dmi'
	icon_state = "bigyashik 0.0"
	density = 1
	opacity = 1

/obj/structure/stalker/bigyashik/melkiy
	icon = 'icons/stalker/structure/yashiki/decorations_32x64.dmi'
	icon_state = "bigyashik"

/obj/structure/stalker/water/attack_hand(mob/living/user)
	if(!user || !istype(user))
		return
	if(!iscarbon(user))
		return
	if(!Adjacent(user))
		return

	if(busy)
		user << "<span class='notice'>Someone's already washing here.</span>"
		return
	var/selected_area = parse_zone(user.zone_sel.selecting)
	var/washing_face = 0
	if(selected_area in list("head", "mouth", "eyes"))
		washing_face = 1
	user.visible_message("<span class='notice'>[user] start washing their [washing_face ? "face" : "hands"]...</span>", \
						"<span class='notice'>You start washing your [washing_face ? "face" : "hands"]...</span>")
	busy = 1

	if(!do_after(user, 40, target = src))
		busy = 0
		return

	busy = 0

	user.visible_message("<span class='notice'>[user] washes their [washing_face ? "face" : "hands"] using [src].</span>", \
						"<span class='notice'>You wash your [washing_face ? "face" : "hands"] using [src].</span>")
	if(washing_face)
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			H.lip_style = null //Washes off lipstick
			H.lip_color = initial(H.lip_color)
			H.regenerate_icons()
		user.drowsyness -= rand(2,3) //Washing your face wakes you up if you're falling asleep
		user.drowsyness = Clamp(user.drowsyness, 0, INFINITY)
	else
		user.clean_blood()


/obj/structure/stalker/water/attackby(obj/item/O, mob/user, params)
	if(busy)
		user << "<span class='warning'>Someone's already washing here!</span>"
		return

	if(istype(O, /obj/item/weapon/reagent_containers))
		var/obj/item/weapon/reagent_containers/RG = O
		if(RG.flags & OPENCONTAINER)
			RG.reagents.add_reagent("water", min(RG.volume - RG.reagents.total_volume, RG.amount_per_transfer_from_this))
			user << "<span class='notice'>You fill [RG] from [src].</span>"
			return

	if(istype(O, /obj/item/weapon/melee/baton))
		var/obj/item/weapon/melee/baton/B = O
		if(B.bcell)
			if(B.bcell.charge > 0 && B.status == 1)
				flick("baton_active", src)
				var/stunforce = B.stunforce
				user.Stun(stunforce)
				user.Weaken(stunforce)
				user.stuttering = stunforce
				B.deductcharge(B.hitcost)
				user.visible_message("<span class='warning'>[user] shocks themself while attempting to wash the active [B.name]!</span>", \
									"<span class='userdanger'>You unwisely attempt to wash [B] while it's still on.</span>")
				playsound(src, "sparks", 50, 1)
				return

	if(istype(O, /obj/item/weapon/mop))
		O.reagents.add_reagent("water", 5)
		user << "<span class='notice'>You wet [O] in [src].</span>"
		playsound(loc, 'sound/effects/slosh.ogg', 25, 1)

	var/obj/item/I = O
	if(!I || !istype(I))
		return
	if(I.flags & ABSTRACT) //Abstract items like grabs won't wash. No-drop items will though because it's still technically an item in your hand.
		return

	user << "<span class='notice'>You start washing [I]...</span>"
	busy = 1
	if(!do_after(user, 40, target = src))
		busy = 0
		return
	busy = 0
	O.clean_blood()
	user.visible_message("<span class='notice'>[user] washes [I] using [src].</span>", \
						"<span class='notice'>You wash [I] using [src].</span>")

/obj/structure/stalker/oscillograph
	name = "oscillograph"
	desc = ""
	icon_state = "oscillograph_off"

/obj/structure/stalker/panel
	name = "machine"
	desc = ""
	icon_state = "panel_1"
	density = 1

/obj/structure/stalker/panel/panel2
	icon_state = "panel_2"

/obj/structure/stalker/musor_yashik
	name = "garbage crate"
	desc = "�������� &#255;���"
	density = 1

/obj/structure/stalker/musor_yashik/red
	icon_state = "yashik_musor"

/obj/structure/stalker/musor_yashik/red/full
	icon_state = "yashik_musor_full"

/obj/structure/stalker/musor_yashik/green
	icon_state = "yashik_musor2"

/obj/structure/stalker/musor_yashik/green/full
	icon_state = "yashik_musor2_full"

/obj/structure/stalker/shitok
	name = "switch box"
	desc = "������ ������������� �����"
	icon_state = "shitok"

/obj/structure/stalker/door
	name = "door"
	desc = "�����&#255; �����������&#255; �����. ������&#255;, �� ��� ����� �� �������"
	icon_state = "door"

/obj/structure/stalker/broke_table
	name = "table"
	desc = "������������ ����"
	icon_state = "broke_table1"
	density = 1

/obj/structure/stalker/broke_table/right
	icon_state = "broke_table2"

/obj/structure/stalker/lift
	name = "elevator"
	desc = "������ ��������� ����. ����&#255;���� ����� �� ��� ������� �� ����������"
	icon_state = "lift"

/obj/structure/stalker/luk
	name = "hatch"
	desc = "�������� ��������������� ���"
	icon_state = "luk0"

/obj/structure/stalker/luk/open
	desc = "�������� �������������� ���. ���������, ��� ������?"
	icon_state = "luk1"

/obj/structure/stalker/luk/open/ladder
	desc = "�������� �������������� ��� � ���������. ���������, ��� ������?"
	icon_state = "luk2"

/obj/structure/stalker/trubas
	name = "pipe"
	desc = "������� ������ �����, ������� ��� ���� � ���������������&#255;"
	icon = 'icons/stalker/structure/trubas.dmi'
	icon_state = "trubas"

/obj/structure/stalker/sign/bar100rentgen
	name = "sign"
	desc = "��������� �������� � �������� �������� '��� 100 �������'"
	icon_state = "100_rentgen"

/obj/structure/stalker/bar_plitka
	name = "tile"
	icon = 'icons/stalker/turfs/floor.dmi'
	icon_state = "bar_plate1"

/obj/structure/stalker/bar_plitka/New()
	..()
	pixel_x = rand(-2, 2)
	pixel_y = rand(-2, 2)