/var/global/list/mutations_list = list()

/datum/mutation/

	var/name

/datum/mutation/New()
	mutations_list[name] = src

/datum/mutation/human

	var/dna_block
	var/quality
	var/get_chance = 100
	var/lowest_value = 256 * 8
	var/text_gain_indication = ""
	var/text_lose_indication = ""
	var/list/visual_indicators = list()
	var/layer_used = MUTATIONS_LAYER //which mutation layer to use
	var/list/species_allowed = list() //to restrict mutation to only certain species
	var/health_req //minimum health required to acquire the mutation
	var/time_coeff = 1 //coefficient for timed mutations

/datum/mutation/human/proc/force_give(mob/living/carbon/human/owner)
	set_block(owner)
	. = on_acquiring(owner)

/datum/mutation/human/proc/force_lose(mob/living/carbon/human/owner)
	set_block(owner, 0)
	. = on_losing(owner)

/datum/mutation/human/proc/set_se(se_string, on = 1)
	if(!se_string || lentext(se_string) < DNA_STRUC_ENZYMES_BLOCKS * DNA_BLOCK_SIZE)	return
	var/before = copytext(se_string, 1, ((dna_block - 1) * DNA_BLOCK_SIZE) + 1)
	var/injection = num2hex(on ? rand(lowest_value, (256 * 16) - 1) : rand(0, lowest_value - 1), DNA_BLOCK_SIZE)
	var/after = copytext(se_string, (dna_block * DNA_BLOCK_SIZE) + 1, 0)
	return before + injection + after

/datum/mutation/human/proc/set_block(mob/living/carbon/owner, on = 1)
	if(owner && owner.has_dna())
		owner.dna.struc_enzymes = set_se(owner.dna.struc_enzymes, on)

/datum/mutation/human/proc/check_block_string(se_string)
	if(!se_string || lentext(se_string) < DNA_STRUC_ENZYMES_BLOCKS * DNA_BLOCK_SIZE)	return 0
	if(hex2num(getblock(se_string, dna_block)) >= lowest_value)
		return 1

/datum/mutation/human/proc/check_block(mob/living/carbon/human/owner)
	if(check_block_string(owner.dna.struc_enzymes))
		if(prob(get_chance))
			. = on_acquiring(owner)
	else
		. = on_losing(owner)

/datum/mutation/human/proc/on_acquiring(mob/living/carbon/human/owner)
	if(!owner || !istype(owner) || owner.stat == DEAD || (src in owner.dna.mutations))
		return 1
	if(species_allowed.len && !species_allowed.Find(owner.dna.species.id))
		return 1
	if(health_req && owner.health < health_req)
		return 1
	owner.dna.mutations.Add(src)
	if(text_gain_indication)
		owner << text_gain_indication
	if(visual_indicators.len)
		var/list/mut_overlay = list(get_visual_indicator(owner))
		if(owner.overlays_standing[layer_used])
			mut_overlay = owner.overlays_standing[layer_used]
			mut_overlay |= get_visual_indicator(owner)
		owner.remove_overlay(layer_used)
		owner.overlays_standing[layer_used] = mut_overlay
		owner.apply_overlay(layer_used)

/datum/mutation/human/proc/get_visual_indicator(mob/living/carbon/human/owner)
	return

/datum/mutation/human/proc/on_attack_hand(mob/living/carbon/human/owner, atom/target)
	return

/datum/mutation/human/proc/on_ranged_attack(mob/living/carbon/human/owner, atom/target)
	return

/datum/mutation/human/proc/on_move(mob/living/carbon/human/owner, new_loc)
	return

/datum/mutation/human/proc/on_life(mob/living/carbon/human/owner)
	return

/datum/mutation/human/proc/on_losing(mob/living/carbon/human/owner)
	if(owner && istype(owner) && (owner.dna.mutations.Remove(src)))
		if(text_lose_indication && owner.stat != DEAD)
			owner << text_lose_indication
		if(visual_indicators.len)
			var/list/mut_overlay = list()
			if(owner.overlays_standing[layer_used])
				mut_overlay = owner.overlays_standing[layer_used]
			owner.remove_overlay(layer_used)
			mut_overlay.Remove(get_visual_indicator(owner))
			owner.overlays_standing[layer_used] = mut_overlay
			owner.apply_overlay(layer_used)
		return 0
	return 1

/datum/mutation/human/proc/say_mod(message)
	if(message)
		return message

/datum/mutation/human/proc/get_spans()
	return list()

/datum/mutation/human/hulk

	name = "Hulk"
	quality = POSITIVE
	get_chance = 15
	lowest_value = 256 * 12
	text_gain_indication = "<span class='notice'>Your muscles hurt!</span>"
	species_allowed = list("human") //no skeleton/lizard hulk
	health_req = 25

/datum/mutation/human/hulk/New()
	..()
	visual_indicators |= image("icon"='icons/effects/genetics.dmi', "icon_state"="hulk_f_s", "layer"=-MUTATIONS_LAYER)
	visual_indicators |= image("icon"='icons/effects/genetics.dmi', "icon_state"="hulk_m_s", "layer"=-MUTATIONS_LAYER)

/datum/mutation/human/hulk/on_acquiring(mob/living/carbon/human/owner)
	if(..())
		return
	var/status = CANSTUN | CANWEAKEN | CANPARALYSE | CANPUSH
	owner.status_flags &= ~status

/datum/mutation/human/hulk/on_attack_hand(mob/living/carbon/human/owner, atom/target)
	return target.attack_hulk(owner)

/datum/mutation/human/hulk/get_visual_indicator(mob/living/carbon/human/owner)
	var/g = (owner.gender == FEMALE) ? 1 : 2
	return visual_indicators[g]

/datum/mutation/human/hulk/on_life(mob/living/carbon/human/owner)
	if(owner.health < 0)
		on_losing(owner)
		owner << "<span class='danger'>You suddenly feel very weak.</span>"

/datum/mutation/human/hulk/on_losing(mob/living/carbon/human/owner)
	if(..())
		return
	owner.status_flags |= CANSTUN | CANWEAKEN | CANPARALYSE | CANPUSH

/datum/mutation/human/hulk/say_mod(message)
	if(message)
		message = "[uppertext(replace_text(message, ".", "!"))]!!"
	return message

/datum/mutation/human/telekinesis

	name = "Telekinesis"
	quality = POSITIVE
	get_chance = 20
	lowest_value = 256 * 12
	text_gain_indication = "<span class='notice'>You feel smarter!</span>"

/datum/mutation/human/telekinesis/New()
	..()
	visual_indicators |= image("icon"='icons/effects/genetics.dmi', "icon_state"="telekinesishead_s", "layer"=-MUTATIONS_LAYER)

/datum/mutation/human/telekinesis/get_visual_indicator(mob/living/carbon/human/owner)
	return visual_indicators[1]

/datum/mutation/human/telekinesis/on_ranged_attack(mob/living/carbon/human/owner, atom/target)
	target.attack_tk(owner)

/datum/mutation/human/cold_resistance

	name = "Cold Resistance"
	quality = POSITIVE
	get_chance = 25
	lowest_value = 256 * 12
	text_gain_indication = "<span class='notice'>Your body feels warm!</span>"
	time_coeff = 5

/datum/mutation/human/cold_resistance/New()
	..()
	visual_indicators |= image("icon"='icons/effects/genetics.dmi', "icon_state"="fire_s", "layer"=-MUTATIONS_LAYER)

/datum/mutation/human/cold_resistance/get_visual_indicator(mob/living/carbon/human/owner)
	return visual_indicators[1]

/datum/mutation/human/cold_resistance/on_life(mob/living/carbon/human/owner)
	if(owner.getFireLoss())
		if(prob(1))
			owner.heal_organ_damage(0,1)   //Is this really needed?

/datum/mutation/human/x_ray

	name = "X Ray Vision"
	quality = POSITIVE
	get_chance = 25
	lowest_value = 256 * 12
	text_gain_indication = "<span class='notice'>The walls suddenly disappear!</span>"
	time_coeff = 2

/datum/mutation/human/x_ray/on_acquiring(mob/living/carbon/human/owner)
	if(..())
		return
	on_life(owner)

/datum/mutation/human/x_ray/on_life(mob/living/carbon/human/owner)
	owner.sight |= SEE_MOBS|SEE_OBJS|SEE_TURFS
	owner.see_in_dark = 8

/datum/mutation/human/x_ray/on_losing(mob/living/carbon/human/owner)
	if(..())
		return
	if((SEE_MOBS & owner.permanent_sight_flags) && (SEE_OBJS & owner.permanent_sight_flags) && (SEE_TURFS & owner.permanent_sight_flags)) //Xray flag combo
		return
	owner.see_in_dark = initial(owner.see_in_dark)
	owner.sight = initial(owner.sight)

/datum/mutation/human/nearsight

	name = "Near Sightness"
	quality = MINOR_NEGATIVE
	text_gain_indication = "<span class='danger'>You can't see very well.</span>"

/datum/mutation/human/nearsight/on_acquiring(mob/living/carbon/human/owner)
	if(..())
		return
	owner.disabilities |= NEARSIGHT

/datum/mutation/human/nearsight/on_losing(mob/living/carbon/human/owner)
	if(..())
		return
	owner.disabilities &= ~NEARSIGHT

/datum/mutation/human/epilepsy

	name = "Epilepsy"
	quality = NEGATIVE
	text_gain_indication = "<span class='danger'>You get a headache.</span>"

/datum/mutation/human/epilepsy/on_life(mob/living/carbon/human/owner)
	if((prob(1) && owner.paralysis < 1))
		owner.visible_message("<span class='danger'>[owner] starts having a seizure!</span>", "<span class='userdanger'>You have a seizure!</span>")
		owner.Paralyse(10)
		owner.Jitter(1000)
		spawn(90)
			owner.jitteriness = 10

/datum/mutation/human/bad_dna

	name = "Unstable DNA"
	quality = NEGATIVE
	text_gain_indication = "<span class='danger'>You feel strange.</span>"

/datum/mutation/human/bad_dna/on_acquiring(mob/living/carbon/human/owner)
	owner << text_gain_indication
	var/mob/new_mob
	if(prob(95))
		if(prob(50))
			new_mob = randmutb(owner)
		else
			new_mob = randmuti(owner)
	else
		new_mob = randmutg(owner)
	if(new_mob && ismob(new_mob))
		owner = new_mob
	. = owner
	on_losing(owner)

/datum/mutation/human/cough

	name = "Cough"
	quality = MINOR_NEGATIVE
	text_gain_indication = "<span class='danger'>You start coughing.</span>"

/datum/mutation/human/cough/on_life(mob/living/carbon/human/owner)
	if((prob(5) && owner.paralysis <= 1))
		owner.drop_item()
		owner.emote("cough")

/datum/mutation/human/dwarfism

	name = "Dwarfism"
	quality = POSITIVE
	get_chance = 15
	lowest_value = 256 * 12
	text_gain_indication = "<span class='notice'>Everything around you seems to grow..</span>"
	text_lose_indication = "<span class='notice'>Everything around you seems to shrink..</span>"

/datum/mutation/human/dwarfism/on_acquiring(mob/living/carbon/human/owner)
	if(..())	return
	owner.resize = 0.8
	owner.pass_flags |= PASSTABLE
	owner.visible_message("<span class='danger'>[owner] suddenly shrinks!</span>")

/datum/mutation/human/dwarfism/on_losing(mob/living/carbon/human/owner)
	if(..())	return
	owner.resize = 1.25
	owner.pass_flags &= ~PASSTABLE
	owner.visible_message("<span class='danger'>[owner] suddenly grows!</span>")

/datum/mutation/human/clumsy

	name = "Clumsiness"
	quality = MINOR_NEGATIVE
	text_gain_indication = "<span class='danger'>You feel lightheaded.</span>"

/datum/mutation/human/clumsy/on_acquiring(mob/living/carbon/human/owner)
	if(..())	return
	owner.disabilities |= CLUMSY

/datum/mutation/human/clumsy/on_losing(mob/living/carbon/human/owner)
	if(..())
		return
	owner.disabilities &= ~CLUMSY

/datum/mutation/human/tourettes

	name = "Tourettes Syndrome"
	quality = NEGATIVE
	text_gain_indication = "<span class='danger'>You twitch.</span>"

/datum/mutation/human/tourettes/on_life(mob/living/carbon/human/owner)
	if((prob(10) && owner.paralysis <= 1))
		owner.Stun(10)
		switch(rand(1, 3))
			if(1)
				owner.emote("twitch")
			if(2 to 3)
				owner.say("[prob(50) ? ";" : ""][pick("SHIT", "PISS", "FUCK", "CUNT", "COCKSUCKER", "MOTHERFUCKER", "TITS")]")
		var/x_offset_old = owner.pixel_x
		var/y_offset_old = owner.pixel_y
		var/x_offset = owner.pixel_x + rand(-2,2)
		var/y_offset = owner.pixel_y + rand(-1,1)
		animate(owner, pixel_x = x_offset, pixel_y = y_offset, time = 1)
		animate(owner, pixel_x = x_offset_old, pixel_y = y_offset_old, time = 1)

/datum/mutation/human/nervousness

	name = "Nervousness"
	quality = MINOR_NEGATIVE
	text_gain_indication = "<span class='danger'>You feel nervous.</span>"

/datum/mutation/human/nervousness/on_life(mob/living/carbon/human/owner)
	if(prob(10))
		owner.stuttering = max(10, owner.stuttering)

/datum/mutation/human/deaf

	name = "Deafness"
	quality = NEGATIVE
	text_gain_indication = "<span class='danger'>You can't seem to hear anything.</span>"

/datum/mutation/human/deaf/on_acquiring(mob/living/carbon/human/owner)
	if(..())	return
	owner.disabilities |= DEAF

/datum/mutation/human/deaf/on_losing(mob/living/carbon/human/owner)
	if(..())
		return
	owner.disabilities &= ~DEAF

/datum/mutation/human/blind

	name = "Blindness"
	quality = NEGATIVE
	text_gain_indication = "<span class='danger'>You can't seem to see anything.</span>"

/datum/mutation/human/blind/on_acquiring(mob/living/carbon/human/owner)
	if(..())	return
	owner.disabilities |= BLIND

/datum/mutation/human/blind/on_losing(mob/living/carbon/human/owner)
	if(..())
		return
	owner.disabilities &= ~BLIND

/datum/mutation/human/race

	name = "Monkified"
	quality = NEGATIVE
	time_coeff = 2

/datum/mutation/human/race/on_acquiring(mob/living/carbon/human/owner)
	if(..())
		return
	. = owner.monkeyize(TR_KEEPITEMS | TR_KEEPIMPLANTS | TR_KEEPORGANS | TR_KEEPDAMAGE | TR_KEEPVIRUS | TR_KEEPSE)

/datum/mutation/human/race/on_losing(mob/living/carbon/monkey/owner)
	if(owner && istype(owner) && owner.stat != DEAD && (owner.dna.mutations.Remove(src)))
		. = owner.humanize(TR_KEEPITEMS | TR_KEEPIMPLANTS | TR_KEEPORGANS | TR_KEEPDAMAGE | TR_KEEPVIRUS | TR_KEEPSE)

/datum/mutation/human/chameleon
	name = "Chameleon"
	quality = POSITIVE
	get_chance = 20
	lowest_value = 256 * 12
	text_gain_indication = "<span class='notice'>You feel one with your surroundings.</span>"
	text_lose_indication = "<span class='notice'>You feel oddly exposed.</span>"
	time_coeff = 5

/datum/mutation/human/chameleon/on_acquiring(mob/living/carbon/human/owner)
	if(..())
		return
	owner.alpha = CHAMELEON_MUTATION_DEFAULT_TRANSPARENCY

/datum/mutation/human/chameleon/on_life(mob/living/carbon/human/owner)
	owner.alpha = max(0, owner.alpha - 25)

/datum/mutation/human/chameleon/on_move(mob/living/carbon/human/owner)
	owner.alpha = CHAMELEON_MUTATION_DEFAULT_TRANSPARENCY

/datum/mutation/human/chameleon/on_losing(mob/living/carbon/human/owner)
	if(..())
		return
	owner.alpha = 255

/datum/mutation/human/wacky
	name = "Wacky"
	quality = MINOR_NEGATIVE
	text_gain_indication = "<span class='sans'>You feel an off sensation in your voicebox.</span>"
	text_lose_indication = "<span class='notice'>The off sensation passes.</span>"

/datum/mutation/human/wacky/get_spans()
	return list(SPAN_SANS)

/datum/mutation/human/mute
	name = "Mute"
	quality = NEGATIVE
	text_gain_indication = "<span class='danger'>You feel unable to express yourself at all.</span>"
	text_lose_indication = "<span class='danger'>You feel able to speak freely again.</span>"

/datum/mutation/human/mute/on_acquiring(mob/living/carbon/human/owner)
	if(..())
		return
	owner.disabilities |= MUTE

/datum/mutation/human/mute/on_losing(mob/living/carbon/human/owner)
	if(..())
		return
	owner.disabilities &= ~MUTE

/datum/mutation/human/smile
	name = "Smile"
	quality = MINOR_NEGATIVE
	dna_block = NON_SCANNABLE
	text_gain_indication = "<span class='notice'>You feel so happy. Nothing can be wrong with anything. :)</span>"
	text_lose_indication = "<span class='notice'>Everything is terrible again. :(</span>"

/datum/mutation/human/smile/say_mod(message)
	if(message)
		message = " [message] "
		//Time for a friendly game of SS13
		message = replace_text(message," stupid "," smart ")
		message = replace_text(message," retard "," genius ")
		message = replace_text(message," unrobust "," robust ")
		message = replace_text(message," dumb "," smart ")
		message = replace_text(message," awful "," great ")
		message = replace_text(message," gay ",pick(" nice "," ok "," alright "))
		message = replace_text(message," horrible "," fun ")
		message = replace_text(message," terrible "," terribly fun ")
		message = replace_text(message," terrifying "," wonderful ")
		message = replace_text(message," gross "," cool ")
		message = replace_text(message," disgusting "," amazing ")
		message = replace_text(message," loser "," winner ")
		message = replace_text(message," useless "," useful ")
		message = replace_text(message," oh god "," cheese and crackers ")
		message = replace_text(message," jesus "," gee wiz ")
		message = replace_text(message," weak "," strong ")
		message = replace_text(message," kill "," hug ")
		message = replace_text(message," murder "," tease ")
		message = replace_text(message," ugly "," beautiful ")
		message = replace_text(message," douchbag "," nice guy ")
		message = replace_text(message," whore "," lady ")
		message = replace_text(message," nerd "," smart guy ")
		message = replace_text(message," moron "," fun person ")
		message = replace_text(message," IT'S LOOSE "," EVERYTHING IS FINE ")
		message = replace_text(message," sex "," hug fight ")
		message = replace_text(message," idiot "," genius ")
		message = replace_text(message," fat "," thin ")
		message = replace_text(message," beer "," water with ice ")
		message = replace_text(message," drink "," water ")
		message = replace_text(message," feminist "," empowered woman ")
		message = replace_text(message," i hate you "," you're mean ")
		message = replace_text(message," nigger "," african american ")
		message = replace_text(message," jew "," jewish ")
		message = replace_text(message," shit "," shiz ")
		message = replace_text(message," crap "," poo ")
		message = replace_text(message," slut "," tease ")
		message = replace_text(message," ass "," butt ")
		message = replace_text(message," damn "," dang ")
		message = replace_text(message," fuck ","  ")
		message = replace_text(message," penis "," privates ")
		message = replace_text(message," cunt "," privates ")
		message = replace_text(message," dick "," jerk ")
		message = replace_text(message," vagina "," privates ")
	return trim(message)

/datum/mutation/human/unintelligable
	name = "Unintelligable"
	quality = NEGATIVE
	text_gain_indication = "<span class='danger'>You can't seem to form any coherent thoughts!</span>"
	text_lose_indication = "<span class='danger'>Your mind feels more clear.</span>"

/datum/mutation/human/unintelligable/say_mod(message)
	if(message)
		var/prefix=copytext(message,1,2)
		if(prefix == ";")
			message = copytext(message,2)
		else if(prefix in list(":","#"))
			prefix += copytext(message,2,3)
			message = copytext(message,3)
		else
			prefix=""

		var/list/words = text2list(message," ")
		var/list/rearranged = list()
		for(var/i=1;i<=words.len;i++)
			var/cword = pick(words)
			words.Remove(cword)
			var/suffix = copytext(cword,length(cword)-1,length(cword))
			while(length(cword)>0 && suffix in list(".",",",";","!",":","?"))
				cword  = copytext(cword,1              ,length(cword)-1)
				suffix = copytext(cword,length(cword)-1,length(cword)  )
			if(length(cword))
				rearranged += cword
		message = "[prefix][uppertext(list2text(rearranged," "))]!!"
	return message

/datum/mutation/human/swedish
	name = "Swedish"
	quality = MINOR_NEGATIVE
	dna_block = NON_SCANNABLE
	text_gain_indication = "<span class='notice'>You feel Swedish, however that works.</span>"
	text_lose_indication = "<span class='notice'>The feeling of Swedishness passes.</span>"

/datum/mutation/human/swedish/say_mod(message)
	if(message)
		message = replace_text(message,"w","v")
		if(prob(30))
			message += " Bork[pick("",", bork",", bork, bork")]!"
	return message

/datum/mutation/human/chav
	name = "Chav"
	quality = MINOR_NEGATIVE
	dna_block = NON_SCANNABLE
	text_gain_indication = "<span class='notice'>Ye feel like a reet prat like, innit?</span>"
	text_lose_indication = "<span class='notice'>You no longer feel like being rude and sassy.</span>"

/datum/mutation/human/chav/say_mod(message)
	if(message)
		message = " [message] "
		message = replace_text(message," looking at  ","  gawpin' at ")
		message = replace_text(message," great "," bangin' ")
		message = replace_text(message," man "," mate ")
		message = replace_text(message," friend ",pick(" mate "," bruv "," bledrin "))
		message = replace_text(message," what "," wot ")
		message = replace_text(message," drink "," wet ")
		message = replace_text(message," get "," giz ")
		message = replace_text(message," what "," wot ")
		message = replace_text(message," no thanks "," wuddent fukken do one ")
		message = replace_text(message," i don't know "," wot mate ")
		message = replace_text(message," no "," naw ")
		message = replace_text(message," robust "," chin ")
		message = replace_text(message,"  hi  "," how what how ")
		message = replace_text(message," hello "," sup bruv ")
		message = replace_text(message," kill "," bang ")
		message = replace_text(message," murder "," bang ")
		message = replace_text(message," windows "," windies ")
		message = replace_text(message," window "," windy ")
		message = replace_text(message," break "," do ")
		message = replace_text(message," your "," yer ")
		message = replace_text(message," security "," coppers ")
	return trim(message)

/datum/mutation/human/elvis
	name = "Elvis"
	quality = MINOR_NEGATIVE
	dna_block = NON_SCANNABLE
	text_gain_indication = "<span class='notice'>You feel pretty good, honeydoll.</span>"
	text_lose_indication = "<span class='notice'>You feel a little less conversation would be great.</span>"

/datum/mutation/human/elvis/on_life(mob/living/carbon/human/owner)
	switch(pick(1,2))
		if(1)
			if(prob(15))
				var/list/dancetypes = list("swinging", "fancy", "stylish", "20'th century", "jivin'", "rock and roller", "cool", "salacious", "bashing", "smashing")
				var/dancemoves = pick(dancetypes)
				owner.visible_message("<b>[owner]</b> busts out some [dancemoves] moves!")
		if(2)
			if(prob(15))
				owner.visible_message("<b>[owner]</b> [pick("jiggles their hips", "rotates their hips", "gyrates their hips", "taps their foot", "dances to an imaginary song", "jiggles their legs", "snaps their fingers")]!")

/datum/mutation/human/elvis/say_mod(message)
	if(message)
		message = " [message] "
		message = replace_text(message," i'm not "," I aint ")
		message = replace_text(message," girl ",pick(" honey "," baby "," baby doll "))
		message = replace_text(message," man ",pick(" son "," buddy "," brother"," pal "," friendo "))
		message = replace_text(message," out of "," outta ")
		message = replace_text(message," thank you "," thank you, thank you very much ")
		message = replace_text(message," what are you "," whatcha ")
		message = replace_text(message," yes ",pick(" sure", "yea "))
		message = replace_text(message," faggot "," square ")
		message = replace_text(message," muh valids "," getting my kicks ")
	return trim(message)

/datum/mutation/human/laser_eyes
	name = "Laser Eyes"
	quality = POSITIVE
	dna_block = NON_SCANNABLE
	text_gain_indication = "<span class='notice'>You feel pressure building up behind your eyes.</span>"
	layer_used = FRONT_MUTATIONS_LAYER

/datum/mutation/human/laser_eyes/New()
	..()
	visual_indicators |= image("icon"='icons/effects/genetics.dmi', "icon_state"="lasereyes_s", "layer"=-FRONT_MUTATIONS_LAYER)

/datum/mutation/human/laser_eyes/get_visual_indicator(mob/living/carbon/human/owner)
	return visual_indicators[1]

/datum/mutation/human/laser_eyes/on_ranged_attack(mob/living/carbon/human/owner, atom/target)
	if(owner.a_intent == "harm")
		owner.LaserEyes(target)


/mob/living/carbon/proc/update_mutations_overlay()
	return

/mob/living/carbon/human/update_mutations_overlay()
	for(var/datum/mutation/human/CM in dna.mutations)
		if(CM.species_allowed.len && !CM.species_allowed.Find(dna.species.id))
			CM.force_lose(src) //shouldn't have that mutation at all
			continue
		if(CM.visual_indicators.len)
			var/list/mut_overlay = list()
			if(overlays_standing[CM.layer_used])
				mut_overlay = overlays_standing[CM.layer_used]
			var/image/V = CM.get_visual_indicator(src)
			if(!mut_overlay.Find(V)) //either we lack the visual indicator or we have the wrong one
				remove_overlay(CM.layer_used)
				for(var/image/I in CM.visual_indicators)
					mut_overlay.Remove(I)
				mut_overlay |= V
				overlays_standing[CM.layer_used] = mut_overlay
				apply_overlay(CM.layer_used)
