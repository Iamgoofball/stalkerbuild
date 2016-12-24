/obj/machinery/stalker
	icon = 'icons/stalker/structure/decor.dmi'

/obj/machinery/stalker/sidormat
	name = "SIDORMAT 3000"
	desc = "An equipment vendor for beginning stalkers. Insert money - buy stuff."
	icon_state = "radio"
	density = 1
	anchored = 1
	var/itemloc = null
	var/itemloc2 = null
	var/balance = 0
	var/list/weapon_list = list(
		///////////////////////////////  ������  /////////////////////////////////////////

		///////////////////////////// **���������** /////////////////////////////////////
		new /datum/data/stalker_equipment("���",					/obj/item/weapon/gun/projectile/automatic/pistol/pm,		3000),
		new /datum/data/stalker_equipment("���� 12",				/obj/item/weapon/gun/projectile/automatic/pistol/fort12,	6500),
		new /datum/data/stalker_equipment("��1�",					/obj/item/weapon/gun/projectile/automatic/pistol/pb1s,		4500),

		///////////////////////////// **��������, ��** /////////////////////////////////////
		new /datum/data/stalker_equipment("������ 5",				/obj/item/weapon/gun/projectile/automatic/mp5,				18000),
		new /datum/data/stalker_equipment("�� 74/2 �",				/obj/item/weapon/gun/projectile/automatic/aksu74 ,			28000),
		new /datum/data/stalker_equipment("�� 74/2 � (�������)",	/obj/item/weapon/gun/projectile/automatic/aksu74/green,		28000),

		/////////////////////////////// **���������** /////////////////////////////////////
		new /datum/data/stalker_equipment("��-16",					/obj/item/weapon/gun/projectile/revolver/bm16,				12000),
		new /datum/data/stalker_equipment("�����",					/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff,		9000),
		new /datum/data/stalker_equipment("������-13",				/obj/item/weapon/gun/projectile/shotgun/chaser,				25000),
		new /datum/data/stalker_equipment("���-34", 				/obj/item/weapon/gun/projectile/revolver/bm16/toz34, 		18000),
		/////////////////////////////// **������** /////////////////////////////////////
		new /datum/data/stalker_equipment("���",					/obj/item/weapon/stalker/knife,								2000)
		)

	var/list/ammo_list = list(
		////////////////////////////////  �������  /////////////////////////////////////////
		new /datum/data/stalker_equipment("����� 9x18",				/obj/item/ammo_box/stalker/b9x18,							3750),
		new /datum/data/stalker_equipment("����� 9x18 �����������",	/obj/item/ammo_box/stalker/b9x18P,							7500),
		new /datum/data/stalker_equipment("������� � ���/��1�",		/obj/item/ammo_box/magazine/stalker/m9x18pm,				750),
		new /datum/data/stalker_equipment("������� � ���� 12",		/obj/item/ammo_box/magazine/stalker/m9x18fort,				1000),
		new /datum/data/stalker_equipment("����� 9x19",				/obj/item/ammo_box/stalker/b9x19,							4000),
		new /datum/data/stalker_equipment("������� � ������",		/obj/item/ammo_box/magazine/stalker/m9x19mp5,				2000),
		new /datum/data/stalker_equipment("����� ����� 12x70",		/obj/item/ammo_box/stalker/b12x70,							3000),
		new /datum/data/stalker_equipment("����� 5.45x39",			/obj/item/ammo_box/stalker/b545,							5750),
		new /datum/data/stalker_equipment("������� � �� 74/2y;AK74",/obj/item/ammo_box/magazine/stalker/m545,					2250)
		)

	var/list/armor_list = list(
		///////////////////////////////  �����  /////////////////////////////////////////

		///////////////////////////// **�������** /////////////////////////////////////
		new /datum/data/stalker_equipment("�������",				/obj/item/clothing/suit/hooded/kozhanka,					5000),
		new /datum/data/stalker_equipment("����&#255; �������",		/obj/item/clothing/suit/hooded/kozhanka/white,				5000),
		new /datum/data/stalker_equipment("���������� ��������",	/obj/item/clothing/suit/hooded/kozhanka/kombez,				40000),
		new /datum/data/stalker_equipment("���������� ��������", 	/obj/item/clothing/suit/hooded/kozhanka/mercenary,			25000),
		new /datum/data/stalker_equipment("���������� �������",		/obj/item/clothing/suit/hooded/kozhanka/combez_bandit,		25000),
		new /datum/data/stalker_equipment("������ ����",			/obj/item/clothing/suit/hooded/kozhanka/banditka/coat,		12500),
		new /datum/data/stalker_equipment("���������� ����",		/obj/item/clothing/suit/hooded/kozhanka/banditka/coat/brown,12500),

		//////////////////////////// **�����, �����** /////////////////////////////////////
		new /datum/data/stalker_equipment("����������",				/obj/item/clothing/mask/gas/stalker,						7500,
		new /datum/data/stalker_equipment("���������� ��������",	/obj/item/clothing/mask/gas/stalker/mercenary,				7500)																														)
		)

	var/list/med_list = list(
		///////////////////////////////  �����������  /////////////////////////////////////////
		new /datum/data/stalker_equipment("�������",				/obj/item/weapon/storage/firstaid/stalker,								1500),
		new /datum/data/stalker_equipment("��������&#255; �������",	/obj/item/weapon/storage/firstaid/army,									3000),
		new /datum/data/stalker_equipment("����",					/obj/item/stack/medical/bruise_pack/bint,								500),
		new /datum/data/stalker_equipment("����",					/obj/item/stack/medical/ointment,										500),
		new /datum/data/stalker_equipment("�������. ���������",		/obj/item/weapon/reagent_containers/hypospray/medipen/stalker/antirad,	1500)
		)

	var/list/food_list = list(
		/////////////////////////////////  ���  ///////////////////////////////////////////
		new /datum/data/stalker_equipment("�������",				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva,				500),
		new /datum/data/stalker_equipment("������",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti,		800),
		new /datum/data/stalker_equipment("�������. ���",			/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/soup,			900),
		new /datum/data/stalker_equipment("�������. ����",			/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/bobi,			800),
		new /datum/data/stalker_equipment("�������. ���&#255;����",	/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/govyadina2,	900),
		new /datum/data/stalker_equipment("�������. ����",			/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/fish,			800),
		new /datum/data/stalker_equipment("����� '������'",			/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki,			700),
		new /datum/data/stalker_equipment("��������� NonStop",		/obj/item/weapon/reagent_containers/food/drinks/soda_cans/energetic,			500),
		new /datum/data/stalker_equipment("�������",				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/snikers,	300),
		new /datum/data/stalker_equipment("�������",				/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,				400),
		new /datum/data/stalker_equipment("�����",					/obj/item/weapon/reagent_containers/food/snacks/stalker/baton,					300),
		new /datum/data/stalker_equipment("��������� ���",			/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/sirok,	400)
		)

	var/list/misc_list = list(
		/////////////////////////////////  ������  /////////////////////////////////////////
		new /datum/data/stalker_equipment("������",							/obj/item/device/instrument/guitar,				2000),
		new /datum/data/stalker_equipment("��������",						/obj/item/device/geiger_counter,				4000),
		new /datum/data/stalker_equipment("������",							/obj/item/weapon/shovel,						800),
		new /datum/data/stalker_equipment("�������",						/obj/item/device/flashlight/seclite,			1000),
		new /datum/data/stalker_equipment("��&#255;� ��&#255; ����������",	/obj/item/weapon/storage/belt/stalker,			12000),
		new /datum/data/stalker_equipment("����&#255;",						/obj/item/device/radio,							10000),
		new /datum/data/stalker_equipment("������",							/obj/item/weapon/storage/box/matches,			200),
		new /datum/data/stalker_equipment("��������",						/obj/item/weapon/storage/fancy/cigarettes/cigpack_maxim,	1000),
		new /datum/data/stalker_equipment("������",							/obj/item/weapon/storage/fancy/cigarettes/cigars,			5000),
		)

/datum/data/stalker_equipment/
	var/equipment_name = "generic"
	var/equipment_path = null
	var/cost = 0

/datum/data/stalker_equipment/New(name, path, cost)
	src.equipment_name = name
	src.equipment_path = path
	src.cost = cost

/obj/machinery/stalker/sidormat/New()
	itemloc = locate(x - 1, y, z)
	itemloc2 = locate(x + 1, y, z)

/obj/machinery/stalker/sidormat/attack_hand(mob/user)
	if(..())
		return
	interact(user)

/obj/machinery/stalker/sidormat/interact(mob/user)
	var/dat
	dat +="<div class='statusDisplay'>"
	dat +="<A href='?src=\ref[src];choice=take'><b>����� �����.</b></A><br>"
	if(balance)
		dat += "�� �����: [balance] �. <A href='?src=\ref[src];choice=eject'>������� ������.</A><br>"
	else
		dat += "�� ����� ����������� ������.  <A href='?src=\ref[src];choice=insert'>�������� ������.</A><br>"
	dat += "<br><br>����������: ����� ���������� - �� <b>�����</b> �����. �������� ������ � ��������� ���� - �� <b>������</b>."
	dat += "</div>"
	dat += "<br><b>������ ���������:</b><BR><table border='0' width='400'>"
	dat += "<tr><td><center><b>������</b></center></td><td></td><td></td></tr>"
	for(var/datum/data/stalker_equipment/prize in weapon_list)
		dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"
	dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>�������</b></center></td><td></td><td></td></tr>"
	for(var/datum/data/stalker_equipment/prize in ammo_list)
		dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"
	dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>������������</b></center></td><td></td><td></td></tr>"
	for(var/datum/data/stalker_equipment/prize in armor_list)
		dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"
	dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>�����������</b></center></td><td></td><td></td></tr>"
	for(var/datum/data/stalker_equipment/prize in med_list)
		dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"
	dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>���</b></center></td><td></td><td></td></tr>"
	for(var/datum/data/stalker_equipment/prize in food_list)
		dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"
	dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>������</b></center></td><td></td><td></td></tr>"
	for(var/datum/data/stalker_equipment/prize in misc_list)
		dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"
	dat += "</table>"

	var/datum/browser/popup = new(user, "miningvendor", "SIDORMAT 3000", 500, 450)
	popup.set_content(dat)
	popup.open()
	return

/obj/machinery/stalker/sidormat/Topic(href, href_list)
	if(..())
		return
	if(href_list["choice"])
		if(href_list["choice"] == "take")
			SellItems()
		if(balance)
			if(href_list["choice"] == "eject")
				GiveMoney(balance)
				balance = 0
		else if(href_list["choice"] == "insert")
			var/obj/item/stack/spacecash/I = usr.get_active_hand()
			if(istype(I))
				if(!usr.drop_item())
					return
				balance += (I.worth * I.amount)
				qdel(I)
			else usr << "<span class='danger'>��� ������.</span>"
	if(href_list["purchase"])
		if(balance)
			var/datum/data/stalker_equipment/prize = locate(href_list["purchase"])
			if (!prize)
				return
			if(prize.cost > balance)
				say("�� ������� �����")
			else
				balance -= prize.cost
				new prize.equipment_path(itemloc2)
	updateUsrDialog()
	return

/obj/machinery/stalker/sidormat/attackby(obj/item/I, mob/user, params)
	if(istype(I,/obj/item/stack/spacecash))
		var/obj/item/stack/spacecash/C = usr.get_active_hand()
		if(istype(C))
			if(!usr.drop_item())
				return
//			C.loc = src
			balance += (C.worth * C.amount)
			qdel(C)
			interact(user)
		return
	..()

/obj/machinery/stalker/sidormat/proc/SellItems()
	var/list/ontable = GetItemsOnTable()
	var/total_cost = GetOnTableCost()
//	for(var/I in ontable)
//		qdel(I)
	if(total_cost > 100)
		GiveMoney(total_cost)
		for(var/I in ontable)
			qdel(I)
		say("����� ���� �������")
	else
		say("����� �� ��� ���� �������")

/obj/machinery/stalker/sidormat/proc/GetItemsOnTable()
	var/list/ontable = list()
	for(var/atom/movable/AM in itemloc)
		if(GetCost(AM.type) || istype(AM, /obj/item/stack/spacecash))
			ontable.Add(AM)
//	for(var/atom/movable/AM in itemloc2)
//		if(GetCost(AM.type) || istype(AM, /obj/item/stack/spacecash))
//			ontable.Add(AM)
	return ontable

/obj/machinery/stalker/sidormat/proc/GetOnTableCost()
	var/list/ontable = GetItemsOnTable()
	var/total_cost = 0

	for(var/atom/item_on_table in ontable)
		var/obj/item/stack/spacecash/C = item_on_table
		switch(item_on_table.type)
			if(/obj/item/stack/spacecash/c50)
				total_cost += 50 * C.amount
			if(/obj/item/stack/spacecash/c100)
				total_cost += 100 * C.amount
			if(/obj/item/stack/spacecash/c500)
				total_cost += 500 * C.amount
			if(/obj/item/stack/spacecash/c1000)
				total_cost += 1000 * C.amount
			if(/obj/item/stack/spacecash/c5000)
				total_cost += 5000 * C.amount
		var/cost = GetCost(item_on_table.type, 1)
		if(cost)
			total_cost += cost
		else
			ontable.Remove(item_on_table)
	return total_cost

/obj/machinery/stalker/sidormat/proc/GiveMoney(amount)
	var/balance = amount
	var/oldbalance = 0
	while(balance >= 50)
		oldbalance = balance

		var/to_give = RemoveFloat(balance / 5000)
		GiveBills(to_give, 5000)
		var/count = to_give * 5000
		balance -= count

		to_give = RemoveFloat(balance / 1000)
		GiveBills(to_give, 1000)
		count = to_give * 1000
		balance -= count

		to_give = RemoveFloat(balance / 500)
		GiveBills(to_give, 500)
		count = to_give * 500
		balance -= count

		to_give = RemoveFloat(balance / 100)
		GiveBills(to_give, 100)
		count = to_give * 100
		balance -= count

		to_give = RemoveFloat(balance / 50)
		GiveBills(to_give, 50)
		count = to_give * 50
		balance -= count


		if(balance == oldbalance)
			break


/obj/machinery/stalker/sidormat/proc/GiveBills(amount, billtype)
	if(!amount)
		return

	var/obj/item/stack/spacecash/bill = null
	if(billtype == 5000)
		bill = new /obj/item/stack/spacecash/c5000(itemloc2)
	if(billtype == 1000)
		bill = new /obj/item/stack/spacecash/c1000(itemloc2)
	if(billtype == 500)
		bill = new /obj/item/stack/spacecash/c500(itemloc2)
	if(billtype == 100)
		bill = new /obj/item/stack/spacecash/c100(itemloc2)
	if(billtype == 50)
		bill = new /obj/item/stack/spacecash/c50(itemloc2)
	bill.amount = amount

/obj/machinery/stalker/sidormat/proc/GetCost(itemtype, half = 0)
	for(var/sidoritem/I in sidoritems)
		if(I.itemtype == itemtype)
			if(half)
				return I.cost / 2
			return I.cost
	return 0

/*/proc/RemoveFloat(number)
	var/result = round(number)
	if(result > number)
		result--
	return result*/

/*/obj/machinery/stalker/sidormat/proc/RedeemVoucher(obj/item/weapon/mining_voucher/voucher, mob/redeemer)
	var/selection = input(redeemer, "Pick your equipment", "Mining Voucher Redemption") as null|anything in list("Kinetic Accelerator", "Resonator", "Mining Drone", "Advanced Scanner")
	if(!selection || !Adjacent(redeemer) || voucher.gc_destroyed || voucher.loc != redeemer)
		return
	switch(selection)
		if("PM")
			new /obj/item/weapon/gun/projectile/automatic/pistol/pm(src.loc)
	qdel(voucher)*/

/obj/machinery/stalker/sidormat/ex_act(severity, target)
	return