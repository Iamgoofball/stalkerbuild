/*
Assistant
*/
/datum/job/army
	title = "Army"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "Army Commander"
	selection_color = "#2E8B57"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	outfit = /datum/outfit/job/army

/datum/job/army/eliteagro
	title = "EliteAgro"
	outfit = /datum/outfit/job/army/eliteagro

/datum/outfit/job/army/eliteagro
	name = "EliteAgro"

/datum/outfit/job/army/eliteagro/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/beret_ua
	suit = /obj/item/clothing/suit/army/skat
	back2 = pick(/obj/item/weapon/gun/projectile/automatic/ak74, /obj/item/weapon/gun/projectile/automatic/ak74/green)
	backpack_contents = list(/obj/item/ammo_box/stalker/b545ap = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/storage/firstaid/army = 1,
							/obj/item/clothing/glasses/eyepatch = 1)
	var/datum/martial_art/plasma_fist/plasma_fist = new(null)
	plasma_fist.teach(H)

/datum/outfit/job/army
	name = "Army"

/datum/outfit/job/army/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = pick(/obj/item/clothing/under/color/switer, /obj/item/clothing/under/color/switer/dark)
	suit = pick(/obj/item/clothing/suit/army, /obj/item/clothing/suit/army/army2)
	ears = null
	belt = /obj/item/weapon/stalker/knife
	id = /obj/item/weapon/storage/wallet/stalker
	back = /obj/item/weapon/storage/backpack/stalker
	back2 = pick(/obj/item/weapon/gun/projectile/automatic/aksu74, /obj/item/weapon/gun/projectile/automatic/aksu74/green)
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/storage/firstaid/army = 1)
	r_pocket = /obj/item/device/radio
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)


/datum/job/army/petrovich
	title = "Petrovich"
	outfit = /datum/outfit/job/army/petrovich

/datum/outfit/job/army/petrovich
	name = "Petrovich"

/datum/outfit/job/army/petrovich/pre_equip(mob/living/carbon/human/H)
	..()
	backpack_contents = list(/obj/item/ammo_box/stalker/b545ap = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/storage/firstaid/army = 1,
							/obj/item/clothing/suit/army/berill = 1)

/datum/outfit/army  // For select_equipment
	name = "Army Soldier"

	head = null
	ears = null
	belt = /obj/item/weapon/stalker/knife
	id = /obj/item/weapon/storage/wallet/stalker
	back = /obj/item/weapon/storage/backpack/stalker
	back2 = /obj/item/weapon/gun/projectile/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/storage/firstaid/army = 1)
	r_pocket = /obj/item/device/radio

/datum/outfit/army/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/color/switer, /obj/item/clothing/under/color/switer/dark)
	suit = pick(/obj/item/clothing/suit/army, /obj/item/clothing/suit/army/army2)
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/armycommander // For select_equipment
	name = "Army Commander"

	head = /obj/item/clothing/head/beret_ua
	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/army/army2
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/fort12
	id = /obj/item/weapon/storage/wallet/stalker
	back = /obj/item/weapon/storage/backpack/stalker
	back2 = /obj/item/weapon/gun/projectile/automatic/ak74/m
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545ap = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/storage/firstaid/army = 1,
							/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki = 1)
	r_pocket = /obj/item/device/radio
	l_pocket = /obj/item/ammo_box/magazine/stalker/m9x18fort