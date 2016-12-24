///////////////////////////// ��������� //////////////////////////////////////////

/obj/item/weapon/gun/projectile/automatic/pistol/pm   // �������
	name = "PMm"
	desc = "�������� �������� �����������������. �������� ��������������� � ���� �������� - �������� ��������� �����. ���������� ������� � �������, ���������&#255; ��������� �������� �������� ��� ������������� �������� � ���������������������� �������� �������. �������� ������ ��������-�������-����������. �������� �������� ��&#255; �����������&#255; �����."
	icon_state = "pm"
	w_class = 2
	fire_sound = 'sound/stalker/weapons/pm_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18pm
	can_suppress = 0
	durability = 50

/obj/item/weapon/gun/projectile/automatic/pistol/pm/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"
	return

/obj/item/weapon/gun/projectile/automatic/pistol/sip  // Sig-Sauer
	name = "SIP-T M200"
	desc = "������, ������������&#255; ��� � 1975 ����, �� �� ��� ��� �����&#255;���&#255; �� ��� ����. ������� ������������ �����, ���� �������� ������ ��� ����������� ����; ������ ������ &#255;��&#255;���&#255; ������������� ������� ������������ ������� .45 �������."
	icon_state = "sip"
	w_class = 2
	fire_sound = 'sound/stalker/weapons/sig220_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sc45
	can_suppress = 0
	durability = 100

/obj/item/weapon/gun/projectile/automatic/pistol/sip/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"
	return


/obj/item/weapon/gun/projectile/automatic/pistol/cora  // Colt1911A
	name = "Kora-919"
	desc = "������������ �������������� ������, � ������ ��������� ��� ���������� ��������� XX ���� � �������� �������� � ����� ��������. ��������&#255; ������� �������� � ����������� ������� �������������&#255; �������������� ������� �������."
	icon_state = "cora"
	w_class = 2
	fire_sound = 'sound/stalker/weapons/colt1911_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sc45
	can_suppress = 0
	durability = 80


/obj/item/weapon/gun/projectile/automatic/pistol/cora/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"
	return

/obj/item/weapon/gun/projectile/automatic/pistol/marta  // Beretta92FS
	name = "Marta"
	desc = "������� �� ���������� ���������� ��� � ������� ���, ������ ��������������� � ����������������� ������������ �� ��� ����. ����� �� �����&#255;��� � � �������������� ����������� ���� ��������&#255; ������� ������� � ������� ������� ��������."
	icon_state = "marta"
	item_state = "marta"
	w_class = 2
	fire_sound = 'sound/stalker/weapons/marta_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19marta
	can_suppress = 0
	durability = 70

/obj/item/weapon/gun/projectile/automatic/pistol/marta/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"
	return

/obj/item/weapon/gun/projectile/automatic/pistol/fort12  // ����12
	name = "Fora 12"
	desc = "�������� ������������ ���������&#255; ����������� ������������, ��������� �� ����� ���. �������� ������� �� ��������� � ��������� ��������� ��&#255;, ����������� � ����� ������������� ���������, ������ ����� ������."
	icon_state = "fort12"
	fire_sound = 'sound/stalker/weapons/fort_shot.ogg'
	w_class = 3
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18fort
	can_suppress = 0
	durability = 40

/obj/item/weapon/gun/projectile/automatic/pistol/fort12/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"
	return

/obj/item/weapon/gun/projectile/automatic/pistol/fort12/unique  // ����12 - ����������� �������
	desc = "����������������� �������� ��������� ����. ��������� �������&#255;�."
	icon_state = "fort12_unique"
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18fort_u

/obj/item/weapon/gun/projectile/automatic/pistol/fort12/unique/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"
	return

/obj/item/weapon/gun/projectile/automatic/pistol/pb1s  //��1�
	name = "PB1s"
	desc = "�������� � ��������������� ����������, ������� ���������������&#255; ��������� ���������. �������� �������, �� � ������ ����� ��-�������� �������� ����������."
	icon_state = "pb1s"
	w_class = 3
	fire_sound = 'sound/stalker/weapons/pb_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18pm
	suppressed = 1
	can_suppress = 0
	can_unsuppress = 0
	durability = 50

/obj/item/weapon/gun/projectile/automatic/pistol/pb1s/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"
	return

/obj/item/weapon/gun/projectile/automatic/pistol/usp_match  // USP Match
	name = "H&K USP Match"
	desc = "�������&#255; ����������&#255; ���������� ��������� ���������, ������� .45. ����� ����������� �������, ������&#255; ��������� ������� ������ ��� �������� �� ���� ������ ����. ����������� ������� �� 15 ��������. �� ����&#255;��� �������� - L.C."
	icon_state = "usp-match"
	w_class = 3
	mag_type = /obj/item/ammo_box/magazine/stalker/usp45
	can_suppress = 0
	durability = 100

/obj/item/weapon/gun/projectile/automatic/pistol/usp_match/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"
	return


///////////////////////////// ��������, �� //////////////////////////////////////////


/obj/item/weapon/gun/projectile/automatic/ak74  // AK-74
	name = "AK 74/2"
	desc = "������� �������� ������� 1974 ���� ��� ������ 5,45x39��. ���������&#255;�� ����� ������� � ������� ������, ���&#255; ��������� � ������������ ��������� ��������� �� �������� ������������&#255; � �������� ��&#255;. � ���� ��� �������� ������ ������� ��������� � ������ ��������."
	icon_state = "ak74"
	item_state = "ak74"
	slot_flags = SLOT_BACK|SLOT_BACK2|SLOT_BELT
	force = 10
	origin_tech = "combat=5;materials=1"
	mag_type = /obj/item/ammo_box/magazine/stalker/m545
	fire_sound = 'sound/stalker/weapons/ak74_shot.ogg'
	can_suppress = 1
	burst_size = 3
	fire_delay = 1
	pin = /obj/item/device/firing_pin
	durability = 90
	w_class = 4
	spread = 1

/obj/item/weapon/gun/projectile/automatic/ak74/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	item_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/ak74/green  // AK-74 - ������� ����
	icon_state = "ak74-green"
	item_state = "ak74-green"
	mag_type = /obj/item/ammo_box/magazine/stalker/m545

/obj/item/weapon/gun/projectile/automatic/ak74/m  // AK-74M
	icon_state = "ak74m"
	item_state = "ak74m"
	mag_type = /obj/item/ammo_box/magazine/stalker/m545

/obj/item/weapon/gun/projectile/automatic/aksu74  // ���74�
	name = "AK 74/2y"
	desc = "�� ����� ��������� � ����� ��� 74/2� (�����������) ������ � ����������-��������, ������ �� &#255;��&#255;���&#255; �������������� ���������. �����������: ����� �������� � �������� ������&#255; ����������&#255; �����������. ������� ���������� - ����&#255; ���������&#255; ��������� � ���������� � �������� ��������� ��� �������� ������&#255;��."
	icon_state = "aksu74"
	item_state = "aksu74"
	slot_flags = SLOT_BACK|SLOT_BACK2|SLOT_BELT
	force = 10
	origin_tech = "combat=3;materials=1"
	mag_type = /obj/item/ammo_box/magazine/stalker/m545
	fire_sound = 'sound/stalker/weapons/ak74u_shot.ogg'
	can_suppress = 1
	burst_size = 3
	fire_delay = 1
	pin = /obj/item/device/firing_pin
	durability = 80
	w_class = 4
	spread = 1

/obj/item/weapon/gun/projectile/automatic/aksu74/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	item_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/aksu74/green  // ���74� - ������� ����
	icon_state = "aksu74-green"
	item_state = "aksu74-green"
	mag_type = /obj/item/ammo_box/magazine/stalker/m545

/obj/item/weapon/gun/projectile/automatic/mp5  // MP5
	name = "Gaduka 5"
	desc = "���� �� ����� ������ � ������ ����������-�������� ������. � ������� ��������� ���&#255;������� XX ���� ��� ����&#255;� �� ���������� ����������������� ����� � ������� �� ������ ������� ����. � ������� ��� ����������� ������ ����� ������������ �����&#255;�� ���� ����� ��&#255;��&#255;���&#255; �� ������ �����, ������ ������� ����� � � ����."
	icon_state = "mp5"
	item_state = "gun"
	fire_sound = 'sound/stalker/weapons/mp5_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19mp5
	can_suppress = 0
	burst_size = 2
	slot_flags = SLOT_BELT
	durability = 70
	w_class = 3

/obj/item/weapon/gun/projectile/automatic/mp5/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/val  // ���
	name = "AS Val"
	desc = "������ �� ���� ��������� ����������� �������� '��������', �� ������� ���������&#255; �������� ���������, ������������ ����� ����� ������&#255;��, � ����� ����� ����� ���������. ���������� �������������&#255; ��&#255; ���������&#255; ����������������&#255;�� � ������&#255;� �����, ��������� ��������� � ������������ ��������."
	icon_state = "val"
	fire_sound = 'sound/stalker/weapons/vintorez_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sp9x39val
	suppressed = 1
	can_suppress = 0
	can_unsuppress = 0
	durability = 90
	slot_flags = SLOT_BACK|SLOT_BACK2|SLOT_BELT
	force = 10
	origin_tech = "combat=5;materials=1"
	burst_size = 2
	pin = /obj/item/device/firing_pin
	w_class = 4

/obj/item/weapon/gun/projectile/automatic/val/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	item_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/groza  // ��-14 �����
	name = "Grom C14"
	desc = "���������-������������ �������� - ����� ������� � ������&#255;� ���� ������� ��������� ��������: ����������, �������, � � �� �� ����&#255; ������������� � ������. '����' ����� ���&#255;� ������� ��������."
	icon_state = "groza"
	fire_sound = 'sound/stalker/weapons/groza_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sp9x39groza
	can_suppress = 0
	durability = 120
	slot_flags = SLOT_BACK|SLOT_BACK2|SLOT_BELT
	force = 10
	origin_tech = "combat=5;materials=1"
	burst_size = 3
	pin = /obj/item/device/firing_pin
	w_class = 4

/obj/item/weapon/gun/projectile/automatic/groza/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	item_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/tpc301  // ����
	name = "TPc-301"
	desc = "����&#255; ������� � �������� ��������� ���������� �-16. ��������&#255; ������������� ������� ������, ������� ���������� � ���������� ���� ������ ������ ���������&#255; ������� ��������� ��&#255;, ���&#255; ������&#255; ���������������� � ����&#255;������ ������ ��� ������������� ��&#255; ������������&#255; � ������� ������&#255;�."
	icon_state = "tpc301"
	item_state = "tpc301"
	slot_flags = SLOT_BACK|SLOT_BACK2|SLOT_BELT
	force = 10
	origin_tech = "combat=6"
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'sound/stalker/weapons/tpc301_shoot.ogg'
	can_suppress = 1
	burst_size = 3
	fire_delay = 1
	pin = /obj/item/device/firing_pin
	durability = 90
	w_class = 4
	spread = 1

/obj/item/weapon/gun/projectile/automatic/tpc301/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	item_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/il86  // ��86
	name = "IL86"
	desc = "����� ����, ��� ��� �������� ���� �������� ������ �������������� �� �������� ��37, ��� � ������� ���������� ������� �� ������ �����, � ����� � � ����. ������� ������������ ��86 &#255;��&#255;���&#255; ������� 4-������� ������ � ������&#255; �������� ������� ��������. ��� �������� ������&#255;�� �������� ��&#255; ����� ������, � ��������� �������� ���������� �������� ������������ ������. ���������� ��� �������� ��������� ������&#255;�� � ����������."
	icon_state = "il86"
	item_state = "il86"
	slot_flags = SLOT_BACK|SLOT_BACK2|SLOT_BELT
	force = 10
	origin_tech = "combat=6;material=1"
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'sound/stalker/weapons/il86_shoot.ogg'
	can_suppress = 1
	burst_size = 2
	fire_delay = 1.5
	pin = /obj/item/device/firing_pin
	durability = 90
	w_class = 4
	spread = 1

/obj/item/weapon/gun/projectile/automatic/il86/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	item_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	return


///////////////////////////// ����������� �������� //////////////////////////////////////////


/obj/item/weapon/gun/projectile/automatic/vintorez  // ��� ��������
	name = "VSS Vintorez"
	desc = "�������� ����������&#255; ����������&#255; '��������'. ������������� ��&#255; ��������� �������� � ������������ ����������� �������� � �������� ��������������� ����������. � ������&#255;��&#255; 400 ������ ��������� ���������� ����� ������� ������. ����� ������� ���������� ������ �����&#255; ������."
	icon_state = "vintorez"
	fire_sound = 'sound/stalker/weapons/vintorez_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sp9x39vint
	suppressed = 1
	can_suppress = 0
	can_unsuppress = 0
	burst_size = 1
	durability = 110
	slot_flags = SLOT_BACK|SLOT_BACK2|SLOT_BELT
	force = 10
	origin_tech = "combat=5;materials=1"
	pin = /obj/item/device/firing_pin
	w_class = 4

/obj/item/weapon/gun/projectile/automatic/vintorez/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	item_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/testgun
	name = "testgun"
	desc = "testing"
	icon_state = "ak74"
	item_state = "gun"
	fire_sound = 'sound/stalker/weapons/ak74_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/testgun
	can_suppress = 1
	burst_size = 3
	durability = 1000
	slot_flags = SLOT_BACK|SLOT_BACK2|SLOT_BELT
	force = 10
	w_class = 3
	spread = 10

/obj/item/weapon/gun/projectile/automatic/testgun/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	item_state = "[initial(icon_state)][magazine ? "" : "-e"][suppressed ? "-silenced" : ""]"
	return