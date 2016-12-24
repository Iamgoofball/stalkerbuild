/obj/item/clothing/suit/hooded/kozhanka
	name = "leather jacket"
	desc = "������&#255; ������&#255; ������&#255; ������, ����� �����. ������ ��������� �������������� � ���������� ������. ������������ ������ ���������� � ������ �����������."
	icon_state = "kozhanka"
	item_state = "det_suit"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	armor = list(melee = 10, bullet = 10, laser = 10,burn = 10, bomb = 10, bio = 10, rad = 0, electro = 10)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/stalker/knife)
	hooded = 1
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/winterhood/stalker/kozhanka

/obj/item/clothing/suit/olympic
	name = "Sportivka"
	desc = "������ ������ ������� � ������. �������� ����������� ��������, ���-��� �� ����� �������� �������."
	icon_state = "olympic_violet"
	item_state = "olympic_violet"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|ARMS
	cold_protection = CHEST|ARMS
	armor = list(melee = 5)

/obj/item/clothing/suit/olympic/orange
	icon_state = "olympic_orange"
	item_state = "olympic_orange"

/obj/item/clothing/suit/olympic/blue
	icon_state = "olympic_blue"
	item_state = "olympic_blue"



/obj/item/clothing/head/winterhood/stalker
	body_parts_covered = HEAD
	cold_protection = HEAD
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags = NODROP|BLOCKHEADHAIR

/obj/item/clothing/head/winterhood/stalker/kozhanka
	icon_state = "winterhood_kozhanka"
	armor = list(melee = 10, bullet = 0, laser = 10,burn = 10, bomb = 0, bio = 10, rad = 0, electro = 10)

/obj/item/clothing/suit/hooded/kozhanka/white
	icon_state = "kozhanka_wh"
	item_state = "labcoat"
	hoodtype = /obj/item/clothing/head/winterhood/stalker/kozhanka_wh

/obj/item/clothing/head/winterhood/stalker/kozhanka_wh
	armor = list(melee = 10, bullet = 0, laser = 10,burn = 10, bomb = 0, bio = 10, rad = 0, electro = 10)
	icon_state = "winterhood_kozhanka_wh"

/obj/item/clothing/suit/hooded/kozhanka/banditka
	name = "bandit jacket"
	desc = "�����������&#255; ������ ������� - ������&#255; ������ �� ������� ��������� ����������. ��� ������, ������ ������������� � ������ ������&#255;� ����."
	icon_state = "banditka"
	item_state = "ro_suit"
	armor = list(melee = 15, bullet = 15, laser = 10,burn = 10, bomb = 10, bio = 10, rad = 0, electro = 10)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/banditka

/obj/item/clothing/head/winterhood/stalker/banditka
	armor = list(melee = 15, bullet = 0, laser = 10,burn = 10, bomb = 10, bio = 10, rad = 0, electro = 10)
	icon_state = "winterhood_banditka"

/obj/item/clothing/suit/hooded/kozhanka/banditka/unique
	name = "chain-mail jacket"
	desc = "������� ���������� ���������� ����������, �� � ��������� ����� ���������� �������. ������� ����� ��� ���� ����� �������, �� �������&#255; ������ ������ �� ����."
	icon_state = "banditka_unique"
	armor = list(melee = 15, bullet = 28, laser = 10,burn = 10, bomb = 10, bio = 10, rad = 0, electro = 10)

/obj/item/clothing/suit/hooded/kozhanka/unique
	name = "anomaly jacket"
	desc = "��� ������ ��&#255;�� � ����� ������ �� ���������, ������� � �������� '������'. �������� ������ ����&#255; � ��������, ������ ������ �������� �����&#255;�� ����������."
	icon_state = "kozhanka_unique"
	armor = list(melee = 10, bullet = 10, laser = 10,burn = 10, bomb = 20, bio = 20, rad = 0, electro = 10)

/obj/item/clothing/suit/hooded/kozhanka/kombez
	name = "stalker armor"
	desc = "������������ '��������� ���������' ���������� �������� ���������&#255;�� ����� ����������� ��������� ������ ���������� ����������� � ����������� �� ������������ �����. ������ �� ���� ���������� ���������� �������. ������� �������� �� ������� ����������� �����&#255;. � ����� ������ ������������ ��&#255; �������� ������ � ��������� �������� � ����� ����."
	icon_state = "kombez"
	item_state = "syndicate-green"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 40, bullet = 30, laser = 50,burn = 50, bomb = 30, bio = 50, rad = 50, electro = 50)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/kombez

/obj/item/clothing/head/winterhood/stalker/kombez
	armor = list(melee = 40, bullet = 	0, laser = 50,burn = 50, bomb = 0, bio = 50, rad = 50, electro = 50)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_kombez"

/obj/item/clothing/suit/jacket/sidor
	name = "old vest"
	desc = "�������&#255; �������, ��������&#255; �� ���� ������."
	icon_state = "sidor_vest"
	item_state = "det_suit"
	burn_state = FIRE_PROOF
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank/internals/emergency_oxygen,/obj/item/toy,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/gun/projectile/automatic/pistol,/obj/item/weapon/gun/projectile/revolver,/obj/item/weapon/gun/projectile/revolver/detective,/obj/item/weapon/stalker/knife)

/obj/item/clothing/suit/hooded/kozhanka/banditka/coat
	name = "bandit coat"
	desc = "������� ���� �� ������ ����. ��������� ������ �������� �� ������������, ����� ��� �� ���� ��������� ����� � ��&#255;���� ���� ������ ������. ���������� ��������, ��, ��� �� �����, ����� �����������&#255; ��������� - ��������, ������������� ��-�� �������� ����."
	icon_state = "banditcoat"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list(melee = 20, bullet = 10, laser = 15,burn = 10, bomb = 0, bio = 10, rad = 0, electro = 10)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/bandit

/obj/item/clothing/head/winterhood/stalker/bandit
	armor = list(melee = 20, bullet = 0, laser = 15,burn = 10, bomb = 10, bio = 10, rad = 0, electro = 10)
	icon_state = "winterhood_banditcoat"

/obj/item/clothing/suit/hooded/kozhanka/banditka/coat/brown
	icon_state = "banditcoatbrown"
	hoodtype = /obj/item/clothing/head/winterhood/stalker/banditbrown

/obj/item/clothing/head/winterhood/stalker/banditbrown
	armor = list(melee = 20, bullet = 0, laser = 15,burn = 10, bomb = 0, bio = 10, rad = 0, electro = 10)
	icon_state = "winterhood_banditcoatbrown"

/obj/item/clothing/suit/hooded/kozhanka/ecolog
	name = "SSP-99"
	desc = "��������� ��&#255; ������ � ������&#255;� ���� ������ ������ ���-99. �����������&#255; ���������&#255;�� ������ � �������������� � ���� ���������-��������. ���������&#255; ������� ���������� ������� � ����������������&#255;. �� ��������� �� ������� ������ ��������."
	icon_state = "ecolog"
	item_state = "suit-orange"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	flags = STOPSPRESSUREDMAGE | THICKMATERIAL
	armor = list(melee = 50, bullet = 20, laser = 90,burn = 90, bomb = 40, bio = 90, rad = 90, electro = 90)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/ecolog
	burn_state = FIRE_PROOF

/obj/item/clothing/head/winterhood/stalker/ecolog
	armor = list(melee = 50, bullet = 20, laser = 90,burn = 90, bomb = 40, bio = 90, rad = 90, electro = 90)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	icon_state = "ecolog_helmet"
	burn_state = FIRE_PROOF

/obj/item/clothing/suit/hooded/kozhanka/ecologm
	name = "SSP-99M"
	desc = "������������������ ���������������� ���������� ���-99. ��������� ������ ����� �� �������� � ����������� ����������&#255;. ������������ ��&#255; ���������� ������ ������� ����������. ����������&#255; ������ �� �������� � ������������� ��������. ������� � ���������-����������� ������ � ������ ������� ��&#255; ��������� ����������&#255;�."
	icon_state = "ecologg"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	flags = STOPSPRESSUREDMAGE | THICKMATERIAL
	armor = list(melee = 60, bullet = 40, laser = 90,burn = 90, bomb = 60, bio = 90, rad = 90, electro = 90)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/ecologg
	burn_state = FIRE_PROOF

/obj/item/clothing/head/winterhood/stalker/ecologg
	armor = list(melee = 60, bullet = 40, laser = 90,burn = 90, bomb = 60, bio = 90, rad = 90, electro = 90)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	icon_state = "ecologg_helmet"
	burn_state = FIRE_PROOF

/obj/item/clothing/suit/hooded/kozhanka/seva
	name = "SEVA"
	desc = "������������ ����� �� ��������� �������� ��� ������ ���������� ����������&#255;�� �������� ������������ ������ ������������� ������������, ������������� � ��������� ������&#255;�. ���������&#255;�� �� ���&#255; �������� ��������� �������������� �����������, ������� ������&#255; � ��������� ������, � ����� ���������� �������� ���������&#255; �������&#255; ���������� �����. �� ���� �������� ������� ���������� &#255;��&#255;���&#255; ������� �������. ������������ ���������� - ��� ����."
	icon_state = "seva"
	item_state = "syndicate-black"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	flags = STOPSPRESSUREDMAGE | THICKMATERIAL
	armor = list(melee = 50, bullet = 40, laser = 80,burn = 80, bomb = 50, bio = 70, rad = 90, electro = 90)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/seva
	burn_state = FIRE_PROOF

/obj/item/clothing/head/winterhood/stalker/seva
	armor = list(melee = 50, bullet = 40, laser = 80,burn = 80, bomb = 50, bio = 70, rad = 90, electro = 90)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	icon_state = "seva_helmet"
	burn_state = FIRE_PROOF

/obj/item/clothing/suit/hooded/kozhanka/seva/orange
	icon_state = "sevao"
	item_state = "suit-orange"

/obj/item/clothing/head/winterhood/stalker/seva/orange
	icon_state = "sevao_helmet"

/obj/item/clothing/suit/hooded/kozhanka/psz9md
	name = "PSZ-9MD"
	desc = "�������� �������� ������ ��&#255; ����. �������� ���&#255;� ��� �� ��������� �������� ����������������� ������� � �������������� ������. � �������: ���������� ���-9�, ������� ������&#255; � ��������� ������, ���������&#255; ������� ���������&#255; �������&#255; ���������� �����. ����������&#255;�� ������������ ������ �� �������� � ����������� ��������&#255;."
	icon_state = "psz9md"
	item_state = "syndicate-black-red"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	flags = STOPSPRESSUREDMAGE | THICKMATERIAL
	armor = list(melee = 50, bullet = 40, laser = 80,burn = 80, bomb = 50, bio = 70, rad = 90, electro = 90)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/psz9md
	burn_state = FIRE_PROOF

/obj/item/clothing/head/winterhood/stalker/psz9md
	armor = list(melee = 50, bullet = 40, laser = 80,burn = 80, bomb = 50, bio = 70, rad = 90, electro = 90)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	icon_state = "psz9md_helmet"
	burn_state = FIRE_PROOF

/obj/item/clothing/suit/hooded/kozhanka/exoskelet
	name = "exoskelet"
	desc = "����������������� ������� �������� �����������. � �������� ������������ ��� � �� �����, � ���� ������������ ����������� � ��������� ������ � ��������������. �� �����&#255; �� ���, ����������&#255; ������ �����&#255;�� �� ���������� �������&#255;��&#255;� �� ��������� �������. ������ ���������� ��������&#255; � �������� ���������. � ��� ��������� �������������� ����������, ����������� ��������� �����������, � ����� ������� ����&#255;. ����������&#255;�� ������������ ������ �� �������� � ����������� ��������&#255;, �� �� ����������� ��������� � �������&#255;�."
	icon_state = "exoskelet"
	item_state = "syndicate-black"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 80, bullet = 60, laser = 50,burn = 50, bomb = 80, bio = 50, rad = 30, electro = 50)
	hooded = 1
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/winterhood/stalker/exoskelet

/obj/item/clothing/head/winterhood/stalker/exoskelet
	armor = list(melee = 80, bullet = 60, laser = 50,burn = 50, bomb = 80, bio = 50, rad = 30, electro = 50)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	icon_state = "exoskelet_helmet"

/obj/item/clothing/suit/army
	name = "army armor"
	desc = "����������� ��������� ����������, ���������� ���� ��������������, �����&#255;���� �������� ����. ����������&#255;�� ������ ������ �� ���� � ��������� �����&#255;, ��������� ���������� ��&#255; ������� ������ ����, ��� ��� �� ����� ������� ������ �� ����������&#255; ���������� �����."
	icon_state = "army_armor"
	item_state = "armor"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 20, bullet = 20, laser = 10,burn = 10, bomb = 10, bio = 0, rad = 0, electro = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/stalker/knife)

/obj/item/clothing/suit/army/army2
	icon_state = "army_armor2"

/obj/item/clothing/suit/army/berill
	name = "Berill"
	desc = "���������������&#255; ��&#255; ������ � ������&#255;� ����, ���������� ���������� ��������."
	icon_state = "berill_5m"
	item_state = "syndicate-green"
	armor = list(melee = 40, bullet = 45, laser = 30,burn = 30, bomb = 40, bio = 30, rad = 30, electro = 30)

/obj/item/clothing/suit/hooded/kozhanka/monolit
	name = "monolith armor"
	desc = "���������� �������� ����������� '�������'. ������������� ����������. �� �������� ��������������� ������� �������� ���������� ����������� ����� ��3-9�. �� ��������� ���������� ������ ���������������� ����� ����������� ��������� �����������, � ������� ���������� ������&#255;���&#255; � �������� ������������������� ������. ������� �������� �� ������� ����������� �����&#255;. ������� ������ �� ���������� ���������� ������&#255;�� ������ ������� ��-�� ���������&#255; ������� ���������� �������."
	icon_state = "monolit"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 40, bullet = 40, laser = 50,burn = 60, bomb = 40, bio = 50, rad = 50, electro = 60)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/monolit

/obj/item/clothing/head/winterhood/stalker/monolit
	armor = list(melee = 40, bullet = 0, laser = 50,burn = 60, bomb = 0, bio = 50, rad = 50, electro = 60)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_monolit"

/obj/item/clothing/suit/army/skat
	name = "SKAT 9M"
	desc = "��������� ����������� ����-9� ������ ��&#255; ���������&#255; ��������� �������� � ����� ���������� ��������. � �������: �&#255;���� ��������� ����������� ����� ��3-12�, ���������� ��������������� ������. ����������&#255;�� ������������ ������ �� �������� � ����������� ��������&#255;, ��� ���� �� �����&#255; ����������� �������. � ������� ���������������&#255; ������� ������ �� ����������� ����������&#255;."
	icon_state = "skat"
	item_state = "syndicate-black"
	armor = list(melee = 70, bullet = 55, laser = 60,burn = 70, bomb = 70, bio = 50, rad = 70, electro = 70)

/obj/item/clothing/suit/hooded/kozhanka/psz9d
	name = "PSZ-9D"
	desc = "�����������&#255; ����� �� ��������� �������� ��� �� ����� ����������� '����'. �������� � ��������� ������� ������ ��3-9 � ��������� � ������ ����������� ����������&#255;�� ������� ������ �� ��������� ������� �����������, ������&#255; ������������� ����������&#255;. ��-�� ���������&#255; ������ ������&#255; ���������� ������� ���������."
	icon_state = "psz9d"
	item_state = "syndicate-black-red"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 50, bullet = 40, laser = 50,burn = 50, bomb = 40, bio = 50, rad = 50, electro = 50)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/psz9d

/obj/item/clothing/head/winterhood/stalker/psz9d
	armor = list(melee = 50, bullet = 0, laser = 50,burn = 50, bomb = 0, bio = 50, rad = 50, electro = 50)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_psz9d"

/obj/item/clothing/suit/hooded/kozhanka/mercenary
	name = "mercenary armor"
	desc = "���������� �������� �� ����������� '�������'. �� ������ ��&#255;�� ������� ���������� �������� �������� �����. �� ���� ����������� ��������� ����� ������� ������������ ����� ��� ���������� �������� �������. �� �������� ��������������� ������� ����������� ��������� ����������� ����� ��3-7."
	icon_state = "mercenary"
	item_state = "syndicate-black"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 25, bullet = 20, laser = 30,burn = 30, bomb = 50, bio = 20, rad = 30, electro = 30)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/mercenary

/obj/item/clothing/head/winterhood/stalker/mercenary
	armor = list(melee = 25, bullet = 0, laser = 30,burn = 30, bomb = 50, bio = 20, rad = 30, electro = 30)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_mercenary"

/obj/item/clothing/suit/hooded/kozhanka/strazh
	name = "strazh svobodi"
	desc = "������������ �������������� ����������� �������� ��������� ���������� ��������. ������� ��������� ���������� ���� ��������� ����������� ����������� �������� ���� �������� ������ �� ���������� ���� � �������� �� ��������� ��������&#255;�. �������� ������� ������� �� ���� ����: ���������� ������������ ���� � ����� � ���������� �����. ��� ��������� ������ �� ��������� ���������� ����������� � ��������."
	icon_state = "strazh"
	item_state = "syndicate-green"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 50, bullet = 40, laser = 50,burn = 50, bomb = 45, bio = 50, rad = 50, electro = 50)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/strazh

/obj/item/clothing/head/winterhood/stalker/strazh
	armor = list(melee = 50, bullet = 0, laser = 50,burn = 50, bomb = 0, bio = 20, rad = 50, electro = 50)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_strazh"

/obj/item/clothing/suit/hooded/kozhanka/combez_bandit
	name = "bandit armor"
	desc = "���������� �������� �� ����������� '�������'. �� ������ ��&#255;�� ������� ���������� �������� �������� �����. �� ���� ����������� ��������� ����� ������� ������������ ����� ��� ���������� �������� �������. �� �������� ��������������� ������� ����������� ��������� ����������� ����� ��3-7."
	icon_state = "combez_bandit"
	item_state = "syndicate-orange"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 25, bullet = 20, laser = 30,burn = 30, bomb = 50, bio = 20, rad = 30, electro = 30)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/combez_bandit

/obj/item/clothing/head/winterhood/stalker/combez_bandit
	armor = list(melee = 25, bullet = 0, laser = 30,burn = 30, bomb = 50, bio = 20, rad = 30, electro = 30)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_combez_bandit"