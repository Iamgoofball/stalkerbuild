/datum/job/stalker
	title = "NOPE"
	list/minimal_access = list()		//Useful for servers which prefer to only have access given to the places a job absolutely needs (Larger server population)
	list/access = list()				//Useful for servers which either have fewer players, so each person needs to fill more than one role, or servers which like to give more access, so players can't hide forever in their super secure departments (I'm looking at you, chemistry!)
	department_head = list()
	flag = 0
	department_flag = 0
	faction = "None"
	total_positions = 0
	spawn_positions = 0
	current_positions = 0
	supervisors = ""
	selection_color = "#ffffff"
	whitelist_only = 1
	req_admin_notify = 0
	minimal_player_age = 0
	outfit = null

/datum/job/stalker/sidor
	title = "Sidorovich"
	faction = "Station"

	selection_color = "#FFA500"

	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station, access_mineral_storeroom)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station, access_mineral_storeroom)

	total_positions = 1
	spawn_positions = 1
	req_admin_notify = 1
	whitelist_only = 1

	outfit = /datum/outfit/job/sidor

/datum/outfit/job/sidor/
	name = "Sidorovich"

/datum/outfit/job/sidor/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/color/sidor/fat
	suit = /obj/item/clothing/suit/jacket/sidor
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/cora
	id = /obj/item/weapon/storage/wallet/stalker
	shoes = /obj/item/clothing/shoes/sneakers/brown
	back = null

/datum/outfit/stalker/sidor  // For select_equipment
	name = "Sidorovich"

	uniform = /obj/item/clothing/under/color/sidor/fat
	suit = /obj/item/clothing/suit/jacket/sidor
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/cora
	id = /obj/item/weapon/storage/wallet/stalker
	shoes = /obj/item/clothing/shoes/sneakers/brown
	back = null

//donat-equip for atelerd
/datum/job/stalker/atelerd
	title = "Svoboda Special"
	faction = "Station"

	selection_color = "#00FF00"

	total_positions = 1
	spawn_positions = 1
	req_admin_notify = 1
	whitelist_only = 1

	outfit = /datum/outfit/stalker/atelerd

/datum/outfit/stalker/atelerd // For select_equipment
	name = "Svoboda Special"

	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/marta
	id = /obj/item/weapon/storage/wallet/stalker
	shoes = /obj/item/clothing/shoes/jackboots/warm
	suit = /obj/item/clothing/suit/hooded/kozhanka/strazh/atelerd
	back = /obj/item/weapon/storage/backpack/stalker
	back2 = /obj/item/weapon/gun/projectile/shotgun/chaser
	l_pocket = /obj/item/stack/spacecash/c5000

/datum/outfit/stalker/atelerd/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/color/switer,/obj/item/clothing/under/color/switer/dark)
	r_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/stack/medical/bruise_pack/bint,/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/stalker/palputin // For select_equipment
	name = "Nedomonolith"

	ears = null
	belt = null
	id = /obj/item/weapon/storage/wallet/stalker
	shoes = /obj/item/clothing/shoes/jackboots/warm
	suit = /obj/item/clothing/suit/hooded/kozhanka/white/monolith
	back = /obj/item/weapon/storage/backpack/stalker
	back2 = null
	l_pocket = /obj/item/stack/spacecash/c5000

/datum/outfit/stalker/atelerd/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/color/switer,/obj/item/clothing/under/color/switer/dark)
	r_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/stack/medical/bruise_pack/bint,/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/job/stalker/jacknoir
	title = "Machinist"
	faction = "Station"

	selection_color = "#00FF00"

	total_positions = 1
	spawn_positions = 1
	req_admin_notify = 1
	whitelist_only = 1

	outfit = /datum/outfit/stalker/machinist

/datum/outfit/stalker/machinist // For select_equipment
	name = "Machinist"
	head = /obj/item/clothing/head/soft/jacknoircap
	uniform = /obj/item/clothing/under/color/switer
	suit = /obj/item/clothing/suit/hooded/kozhanka/white
	ears = null
	id = /obj/item/weapon/storage/wallet/stalker
	belt = /obj/item/weapon/stalker/knife
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = null
	back = /obj/item/weapon/storage/backpack/stalker
	l_pocket = /obj/item/stack/spacecash/c5000
	r_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa
	ears = null



