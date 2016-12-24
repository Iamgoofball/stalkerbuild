#define IU238 	1
#define IPU238 	2
#define	IPO210	4

/isotope
	var/name
	var/not_modified_ka = 0.0

/isotope/u238
	name = "Uranium 238"
	not_modified_ka = 0.59596

/isotope/pu238
	name = "Plutonium 238"
	not_modified_ka = 0.27030

/isotope/po210
	name = "Polonium 210"
	not_modified_ka = 0.44015


/obj/item/weapon/artefact
	icon = 'icons/stalker/artefacts.dmi'
	var/isotope/isotope_base = null
	var/capacity = 0
	var/charge = 0
	var/list/art_armor = list()
	var/radiation = 2
	w_class = 3



/obj/item/weapon/artefact/proc/Think(user)
	if(!charge) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		if(radiation)
			mob.radiation += radiation
	return 1


/obj/item/weapon/artefact/New()
	isotope_base = pick(/isotope/u238,
						/isotope/pu238,
						/isotope/po210)
	capacity = rand(1000, 10000)
	charge = capacity


	/////////////////////////////////////////�������������� ���������/////////////////////////////////////////
/obj/item/weapon/artefact/meduza
	name = "Meduza"
	desc = "���������&#255; � �������� ��������. ��������� ������ �������� ����, �������� �������� �������� &#255;��&#255;���&#255; ����� ���������. �������� ������ ������������ � �������."
	icon_state = "meduza"
	art_armor = list(bullet = 10)

/obj/item/weapon/artefact/stoneflower
	name = "Stone Flower"
	desc = "��������&#255; � �������� ���������. ����� �������� ����� ����� � �������� �������� ����. ���������&#255; ������������� ���������� ���� �������� ���� �����."
	icon_state = "stoneflower"
	art_armor = list(bullet = 20)

/obj/item/weapon/artefact/nightstar
	name = "Night Star"
	desc = "���� ������������� �������� ����������&#255; ��������� ���������. ������������� ��������� ������� ������������� ������������ �������������� ��������&#255;."
	icon_state = "nightstar"
	art_armor = list(bullet = 30)
	radiation = 3

/obj/item/weapon/artefact/maminibusi
	name = "Mamini Busi"
	desc = "���������� �����������, �� ����� ������������ ����, �������� ������ � �������. ��� ������ �� ����. �� �������� �������&#255;."
	icon_state = "mamini_busi"
	art_armor = list(bullet = 30)
	radiation = 0

	/////////////////////////////////////////������� ���������/////////////////////////////////////////

/obj/item/weapon/artefact/flash
	name = "Flash"
	desc = "������� ������� ��������� ���� ��������. �������� ���������� ��� � ������� ������ ��-�� ��� �������� �������."
	icon_state = "flash"
	art_armor = list(electro = 10)
	radiation = 2

/obj/item/weapon/artefact/moonlight
	name = "Moonlight"
	desc = "����������� ������ ���������� �������� �������. ������, ����� ������������� �������� ����� ����� ��������, ���� ����������� �������� ����������������. ������� ��������."
	icon_state = "moonlight"
	art_armor = list(electro = 20)

/obj/item/weapon/artefact/pustishka
	name = "Pustishka"
	desc = "����������������, ����&#255;������ �������������� �������. ������&#255;�� �������������."
	icon_state = "pustishka"
	art_armor = list(electro = 30)

/obj/item/weapon/artefact/battery
	name = "Battery"
	desc = "������������� ���� ���� ������� ������� ������� �����. ���&#255;���, ��� � ��� ������ ����&#255;� ��������������� ��������, �� ��� ����� ���������� ������&#255;� �� ����������&#255; - ����� �� ��������."
	icon_state = "battery"
	art_armor = list(electro = 30)

	/////////////////////////////////////////�������� ���������/////////////////////////////////////////

/obj/item/weapon/artefact/droplet
	name = "Droplet"
	desc = "����������&#255; ��������� ����� ��� ������� ������������. ������ ����&#255;��� ��� ����������� ����������� ����������� � ��&#255;������ ������������, �������� ���������. ����� ������� ��������."
	icon_state = "droplet"
	art_armor = list(rad = 10)
	radiation = -1

/obj/item/weapon/artefact/droplet/Think(user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustStaminaLoss(1.8)
	return 1

/obj/item/weapon/artefact/fireball
	name = "Fireball"
	desc = "����������������&#255; � �������� ������. ������ ������&#255; � ����������������, ���&#255; ���������� ����������� ���������� ����� ������������� ��������. ����� ������ �� ��������&#255;. �������� �������� �����."
	icon_state = "fireball"
	art_armor = list(rad = 20)

/obj/item/weapon/artefact/crystal
	name = "Crystal"
	desc = "���������&#255; ��� ��������� �&#255;������ ������� � �������� ������. ���� �������� ������������ ������� ��������. ����� �������� ������ ������&#255; ����������, � ���� ��� ��� ����� ������."
	icon_state = "crystal"
	art_armor = list(rad = 30)
	radiation = -5

	//����
/obj/item/weapon/storage/belt/stalker
	name = "artefact belt"
	desc = "����������� ��&#255;� ��&#255; ����������."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "utilitybelt"
	item_state = "utility"
	max_w_class = 3

/obj/item/weapon/storage/belt/stalker/artefact_belt
	var/thinkrate = 1000
	can_hold = list(
													//�������������� ���������
		/obj/item/weapon/artefact/meduza,
		/obj/item/weapon/artefact/stoneflower,
		/obj/item/weapon/artefact/nightstar,
		/obj/item/weapon/artefact/maminibusi,

													//������� ���������
		/obj/item/weapon/artefact/flash,
		/obj/item/weapon/artefact/moonlight,
		/obj/item/weapon/artefact/battery,
		/obj/item/weapon/artefact/pustishka,

													//�������� ���������
		/obj/item/weapon/artefact/droplet,
		/obj/item/weapon/artefact/fireball,
		/obj/item/weapon/artefact/crystal,

		)

/obj/item/weapon/storage/belt/stalker/artefact_belt/proc/Think()
	for(var/obj/item/weapon/artefact/A in contents)
		A.Think(loc)
	spawn(thinkrate)
		Think()

/obj/item/weapon/storage/belt/stalker/artefact_belt/handle_item_insertion(obj/item/W, prevent_warning = 0, mob/user).
	if(..(W, prevent_warning, user) && istype(W, /obj/item/weapon/artefact))
		var/obj/item/weapon/artefact/Artefact = W
		var/mob/living/carbon/mob = loc
		for(var/i=1,i<=Artefact.art_armor.len,i++)
			var/armortype = Artefact.art_armor[i]
			if(!mob.global_armor.Find(armortype))
				mob.global_armor.Add(armortype)
			mob.global_armor[armortype] += Artefact.art_armor[armortype]
		return 1
	return 0

/obj/item/weapon/storage/belt/stalker/artefact_belt/remove_from_storage(obj/item/W, atom/new_location, burn = 0)
	if(..(W, new_location, burn) && istype(W, /obj/item/weapon/artefact))
		var/obj/item/weapon/artefact/Artefact = W
		var/mob/living/carbon/mob = loc
		for(var/i=1,i<=Artefact.art_armor.len,i++)
			var/armortype = Artefact.art_armor[i]
			if(!mob.global_armor.Find(armortype))
				mob.global_armor.Add(armortype)
			mob.global_armor[armortype] -= Artefact.art_armor[armortype]
		return 1
	return 0

/obj/item/weapon/storage/belt/stalker/artefact_belt/small_artefact_belt
	name = "small artefact belt"
	desc = "����������� ��&#255;� ��&#255; ����������."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "fannypack_black"
	item_state = "artefacts"
	storage_slots = 2


