/*
Assistant
*/
/datum/job/assistant
	title = "Survivor"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#dddddd"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	outfit = /datum/outfit/job/assistant


/*/datum/job/assistant/get_access()
	if((config.jobs_have_maint_access & ASSISTANTS_HAVE_MAINT_ACCESS) || !config.jobs_have_minimal_access) //Config has assistant maint access set
		. = ..()
		. |= list(access_maint_tunnels)
	else
		return ..()*/

/datum/job/assistant/config_check()
	if(config && !(config.assistant_cap == 0))
		total_positions = config.assistant_cap
		spawn_positions = config.assistant_cap
		return 1
	return 0


/datum/outfit/job/assistant
	name = "Stalker"

/datum/outfit/job/assistant/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/color/switer,/obj/item/clothing/under/color/switer/dark)
	suit = pick(/obj/item/clothing/suit/hooded/kozhanka,/obj/item/clothing/suit/hooded/kozhanka/white)
	ears = null
	id = /obj/item/weapon/storage/wallet/stalker
	belt = /obj/item/weapon/stalker/knife
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = null
	back = /obj/item/weapon/storage/backpack/stalker
	l_pocket = /obj/item/stack/spacecash/c5000
	r_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/stack/medical/bruise_pack/bint,/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/stalker  // For select_equipment
	name = "Stalker"

	uniform = /obj/item/clothing/under/color/switer
	suit = /obj/item/clothing/suit/hooded/kozhanka
	ears = null
	id = /obj/item/weapon/storage/wallet/stalker
	belt = /obj/item/weapon/stalker/knife
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = null
	back = /obj/item/weapon/storage/backpack/stalker
	l_pocket = /obj/item/stack/spacecash/c5000
	r_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa



/datum/outfit/stalkervolk  // For select_equipment
	name = "Old Stalker"

	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/hooded/kozhanka/kombez
	ears = null
	id = /obj/item/weapon/storage/wallet/stalker
	belt = /obj/item/weapon/stalker/knife
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1, /obj/item/ammo_box/magazine/stalker/m545 = 2, /obj/item/weapon/storage/firstaid/stalker)
	back2 = /obj/item/weapon/gun/projectile/automatic/ak74/green
	back = /obj/item/weapon/storage/backpack/stalker
	l_pocket = /obj/item/stack/spacecash/c5000
	r_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva