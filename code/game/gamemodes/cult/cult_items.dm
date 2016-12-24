/obj/item/weapon/melee/cultblade
	name = "eldritch longsword"
	desc = "A sword humming with unholy energy. It glows with a dim red light."
	icon_state = "cultblade"
	item_state = "cultblade"
	flags = CONDUCT
	sharpness = IS_SHARP
	w_class = 4
	force = 30
	throwforce = 10
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")



/obj/item/weapon/melee/cultblade/attack(mob/living/target, mob/living/carbon/human/user)
	if(!iscultist(user))
		user.Weaken(5)
		user.visible_message("<span class='warning'>A powerful force shoves [user] away from [target]!</span>", \
							 "<span class='cultlarge'>\"You shouldn't play with sharp things. You'll poke someone's eye out.\"</span>")
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			H.apply_damage(rand(force/2, force), BRUTE, pick("l_arm", "r_arm"))
		else
			user.adjustBruteLoss(rand(force/2,force))
		return
	..()

/obj/item/weapon/melee/cultblade/pickup(mob/living/user)
	if(!iscultist(user))
		user << "<span class='cultlarge'>\"I wouldn't advise that.\"</span>"
		user << "<span class='warning'>An overwhelming sense of nausea overpowers you!</span>"
		user.Dizzy(120)

/obj/item/weapon/melee/cultblade/dagger
	name = "sacrificial dagger"
	desc = "A strange dagger said to be used by sinister groups for \"preparing\" a corpse before sacrificing it to their dark gods."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "render"
	w_class = 2
	force = 15
	throwforce = 25
	embed_chance = 75

/obj/item/weapon/melee/cultblade/dagger/attack(mob/living/target, mob/living/carbon/human/user)
	..()
	if(ishuman(target))
		var/mob/living/carbon/human/H = target
		H.drip(50)

/obj/item/clothing/head/culthood
	name = "ancient cultist hood"
	icon_state = "culthood"
	desc = "A torn, dust-caked hood. Strange letters line the inside."
	flags_inv = HIDEFACE
	flags_cover = HEADCOVERSEYES
	armor = list(melee = 30, bullet = 10, laser = 5,energy = 5, bomb = 0, bio = 0, rad = 0)
	cold_protection = HEAD
	min_cold_protection_temperature = HELMET_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = HELMET_MAX_TEMP_PROTECT

/obj/item/clothing/suit/cultrobes
	name = "ancient cultist robes"
	desc = "A ragged, dusty set of robes. Strange letters line the inside."
	icon_state = "cultrobes"
	item_state = "cultrobes"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	allowed = list(/obj/item/weapon/tome,/obj/item/weapon/melee/cultblade)
	armor = list(melee = 50, bullet = 30, laser = 50,energy = 20, bomb = 25, bio = 10, rad = 0)
	flags_inv = HIDEJUMPSUIT
	cold_protection = CHEST|GROIN|LEGS|ARMS
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|ARMS
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT


/obj/item/clothing/head/culthood/alt
	name = "cultist hood"
	desc = "An armored hood worn by the followers of Nar-Sie."
	icon_state = "cult_hoodalt"
	item_state = "cult_hoodalt"

/obj/item/clothing/suit/cultrobes/alt
	name = "cultist hood"
	desc = "An armored set of robes worn by the followers of Nar-Sie."
	icon_state = "cultrobesalt"
	item_state = "cultrobesalt"


/obj/item/clothing/head/magus
	name = "magus helm"
	icon_state = "magus"
	item_state = "magus"
	desc = "A helm worn by the followers of Nar-Sie."
	flags_inv = HIDEFACE
	flags = BLOCKHAIR
	armor = list(melee = 30, bullet = 30, laser = 30,energy = 20, bomb = 0, bio = 0, rad = 0)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

/obj/item/clothing/suit/magusred
	name = "magus robes"
	desc = "A set of armored robes worn by the followers of Nar-Sie"
	icon_state = "magusred"
	item_state = "magusred"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	allowed = list(/obj/item/weapon/tome,/obj/item/weapon/melee/cultblade)
	armor = list(melee = 50, bullet = 30, laser = 50,energy = 20, bomb = 25, bio = 10, rad = 0)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT


/obj/item/clothing/head/helmet/space/cult
	name = "nar-sian bruiser's helmet"
	desc = "A heavily-armored helmet worn by warriors of the Nar-Sian cult. It can withstand hard vacuum."
	icon_state = "cult_helmet"
	item_state = "cult_helmet"
	armor = list(melee = 60, bullet = 50, laser = 30,energy = 15, bomb = 30, bio = 30, rad = 30)

/obj/item/clothing/suit/space/cult
	name = "nar-sian bruiser's armor"
	icon_state = "cult_armor"
	item_state = "cult_armor"
	desc = "A heavily-armored exosuit worn by warriors of the Nar-Sian cult. It can withstand hard vacuum."
	w_class = 3
	allowed = list(/obj/item/weapon/tome,/obj/item/weapon/melee/cultblade,/obj/item/weapon/tank/internals/)
	armor = list(melee = 70, bullet = 50, laser = 30,energy = 15, bomb = 30, bio = 30, rad = 30)

/obj/item/summoning_orb
	name = "summoning orb"
	desc = "A mysterious orb that glows eerily. <span class='cult'>You could swear that it just moved on its own.</span>"
	icon = 'icons/obj/cult.dmi'
	icon_state = "summoning_orb"
	w_class = 1

/obj/item/summoning_orb/afterattack(atom/target, mob/user, proximity_flag)
	if(!iscultist(user))
		return ..()
	if(proximity_flag && isliving(target) && iscultist(target))
		var/mob/living/L = target
		if(L.stat == DEAD)
			user << "<span class='cultlarge'>You shouldn't waste that.</span>"
			return ..()
		target << "<span class='cult'>You feel the Geometer's essence violating your insides.</span>"
		target << "<span class='cult'>It feels... </span><span class='cultitalic'>good.</span>"
		target.reagents.add_reagent("unholywater", 15)
		qdel(src)
	..()

/obj/item/summoning_orb/attack_self(mob/user)
	if(!iscultist(user))
		return ..()
	if(ticker.mode.name != "cult")
		return
	var/turf/T = get_turf(user)
	if(T.z != ZLEVEL_STATION)
		user << "<span class='cultlarge'>You shouldn't do this here. Go back.</span>"
		return
	var/datum/game_mode/cult/cult = ticker.mode
	if(!cult.attempts_left)
		user << "<span class='notice'>You attempt to call out to the Geometer, but there is no answer...</span>"
		return
	if(cult.eldergod)
		user << "<span class='cultlarge>The Geometer is already among us.</span>"
		return
	if(cult.large_shell_reference)
		var/obj/S = cult.large_shell_reference
		if(S.anchored)
			var/area/A = get_area(S)
			user << "<span class='cult'>The Geometer has already started manifesting in [initial(A.name)]. You can no longer move Her shell.</span>"
			return
		switch(alert(user,"The Geometer's shell has already been manifested. Do you wish to summon it to your location?","Summoning Large Shell","Yes","No"))
			if("Yes")
				S.visible_message("<span class='cultlarge'>The shell suddenly vanishes.</span>")
				S.loc = user.loc
	else
		switch(alert(user,"Are you sure you wish to summon the large construct shell? [cult.attempts_left] attempts left!","Summoning Large Shell","Yes","No"))
			if("Yes")
				cult.attempts_left--
				place_down_large_shell(user)
				qdel(src)

/obj/item/summoning_orb/proc/place_down_large_shell(mob/user)
	if(!(ticker.mode.name == "cult"))
		user << "<span class='notice'>You attempt to call out to the Geometer for Her shell, but you fail...</span>"
		return
	var/datum/game_mode/cult/cult = ticker.mode
	if(cult.attempts_left <= 0)
		user << "<span class='cultlarge'>The Geometer is no longer interested in you.</span>"
	var/A = new /obj/structure/constructshell/large(get_turf(src))
	cult.large_shell_reference = A
