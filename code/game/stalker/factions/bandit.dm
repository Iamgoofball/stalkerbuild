/*
Assistant
*/
/datum/job/bandit
	title = "Bandit"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#000000"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	limit_per_player = 3
	outfit = /datum/outfit/job/bandit

/datum/job/bandit/pahan
	title = "Pahan"
	whitelist_only = 1
	outfit = /datum/outfit/job/bandit/pahan

/datum/job/bandit/barman
	title = "Bandit Barman"
	whitelist_only = 1
	outfit = /datum/outfit/job/bandit/barman

/datum/outfit/job/bandit
	name = "Bandit"

/datum/outfit/job/bandit/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/color/switer, /obj/item/clothing/under/color/switer/dark)
	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka
	ears = null
	id = /obj/item/weapon/storage/wallet/stalker
	belt = /obj/item/weapon/stalker/knife
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	back = /obj/item/weapon/storage/backpack/stalker
	backpack_contents = list(/obj/item/stack/spacecash/c1000 = 1, /obj/item/ammo_box/magazine/stalker/m9x18pm = 2)
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/stack/medical/bruise_pack/bint,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
	r_pocket = /obj/item/weapon/gun/projectile/automatic/pistol/pm

/datum/outfit/job/bandit/pahan
	name = "Pahan"

/datum/outfit/job/bandit/pahan/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka/coat
	ears = null
	id = /obj/item/weapon/storage/wallet/stalker
	belt = /obj/item/weapon/gun/projectile/automatic/mp5
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	back = /obj/item/weapon/storage/backpack/stalker
	backpack_contents = list(/obj/item/stack/spacecash/c5000 = 1, /obj/item/ammo_box/stalker/b9x19 = 1, /obj/item/ammo_box/magazine/stalker/m9x19mp5 = 1, /obj/item/ammo_box/magazine/stalker/m9x18pm = 1)
	l_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti
	r_pocket = /obj/item/weapon/gun/projectile/automatic/pistol/pm

/datum/outfit/job/bandit/barman
	name = "Bandit Barman"

/datum/outfit/job/bandit/barman/pre_equip(mob/living/carbon/human/H)
	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka
	ears = null
	id = /obj/item/weapon/storage/wallet/stalker
	belt = /obj/item/weapon/gun/projectile/revolver/bm16/sawnoff
	shoes = /obj/item/clothing/shoes/jackboots/warm
	head = /obj/item/clothing/head/bowler
	back = /obj/item/weapon/storage/backpack/stalker
	backpack_contents = list(/obj/item/stack/spacecash/c5000 = 3, /obj/item/ammo_box/stalker/b12x70 = 1)
	l_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti
	r_pocket = /obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki

/datum/outfit/bandit  // For select_equipment
	name = "Bandit"

	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka
	ears = null
	id = /obj/item/weapon/storage/wallet/stalker
	belt = /obj/item/weapon/stalker/knife
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	back = /obj/item/weapon/storage/backpack/stalker
	backpack_contents = list(/obj/item/stack/spacecash/c1000 = 1, /obj/item/ammo_box/magazine/stalker/m9x18pm =  2)
	r_pocket = /obj/item/weapon/gun/projectile/automatic/pistol/pm

/datum/outfit/bandit/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/color/switer, /obj/item/clothing/under/color/switer/dark)
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/stack/medical/bruise_pack/bint,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
