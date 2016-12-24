/obj/item/weapon/storage/stalker/shkaf64
	name = "Shkaf"
	desc = "������� �����&#255;���� ����. ��������, �� � ��������� ������ �����&#255; � �����, �� ������ ����� ��������."
	icon = 'icons/stalker/structure/decorations_32x64.dmi'
	icon_state = "shkaf64"
	density = 1
	anchored = 1
	pixel_y = 12

/obj/item/weapon/storage/stalker/shkaf64/attack_hand(mob/user)
	return attack_self(user)

/obj/structure/table/stalker
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker)
	pass_flags = LETPASSTHROW
/*
/obj/structure/table/stalker/CanPass(atom/movable/mover, turf/target, height=0)//So bullets will fly over and stuff.
	if(istype(mover, /obj/item/projectile))
		var/obj/item/projectile/proj = mover
		if(proj.firer && Adjacent(proj.firer))
			return 1
		if(!unpassable)
			return 1
		return 0
	else
		return 0
*/

/obj/structure/table/stalker/wood
	desc = "������� �����&#255;���� ������ ����������� ����."
	icon = 'icons/obj/smooth_structures/stol_stalker.dmi'
	icon_state = "stol"
	deconstructable = 0
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker/wood)

/obj/structure/table/stalker/wood/bar
	desc = "����������&#255; �����&#255; ������"
	icon = 'icons/obj/smooth_structures/stol_stalker_bar.dmi'
	icon_state = "bar"
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker/wood/bar)

/obj/structure/table/stalker/wood/bar100rentgen
	desc = "�����������&#255; �����&#255; ������"
	icon = 'icons/stalker/structure/bartables.dmi'
	icon_state = "table"
	smooth = SMOOTH_FALSE

/obj/item/weapon/storage/stalker/plita
	name = "stove"
	desc = "�����&#255; � ����� �����&#255; ������&#255; �����. ���-�� ��� ����� ��������� �������� ��������� ����, ���������� � ��&#255;��� � �����."
	icon = 'icons/stalker/structure/decor.dmi'
	icon_state = "gazovaya_plita"
	density = 1

/obj/item/weapon/storage/stalker/plita/attack_hand(mob/user)
	return attack_self(user)

/obj/item/weapon/storage/stalker/pech
	name = "furnace"
	desc = "�����&#255; ����."
	icon = 'icons/stalker/structure/decor.dmi'
	icon_state = "pech"

/obj/item/weapon/storage/stalker/pech/attack_hand(mob/user)
	return attack_self(user)

/obj/structure/stalker/okno
	name = "Window"
	desc = "������ �����&#255;���� ����."
	icon = 'icons/stalker/structure/decor2.dmi'
	pass_flags = LETPASSTHROW
	density = 1
	opacity = 0
	var/unpassable = 0

/obj/structure/stalker/okno/CanPass(atom/movable/mover, turf/target, height=0)
	if(height==0)
		return 1

	if(istype(mover) && mover.checkpass(PASSTABLE))
		return 1
	if(locate(/obj/structure/stalker/okno) in get_turf(mover))
		return 1
	else
		return !density


/obj/structure/stalker/okno/whitebrick/odin
	icon_state = "whitebrick1"

/obj/structure/stalker/okno/whitebrick/dva
	icon_state = "whitebrick2"

/obj/structure/stalker/okno/whitebrick/tri
	icon_state = "whitebrickarm"

/obj/structure/stalker/okno/whitebrick/double1
	icon_state = "whitebrickdbl1"

/obj/structure/stalker/okno/whitebrick/double2
	icon_state = "whitebrickdbl2"

/obj/structure/stalker/okno/redbrick/odin
	icon_state = "redbrick1"

/obj/structure/stalker/okno/redbrick/dva
	icon_state = "redbrick2"

/obj/structure/stalker/okno/redbrick/double1
	icon_state = "redbrickdbl1"

/obj/structure/stalker/okno/redbrick/double2
	icon_state = "redbrickdbl2"