/*

This file contains the arcane tome files as well as innate cultist emergency communications.

*/

/mob/proc/cult_add_comm() //why the fuck does this have its own proc? not removing it because it might be used somewhere but...
	verbs += /mob/living/proc/cult_innate_comm

/mob/living/proc/cult_innate_comm()
	set category = "Cultist"
	set name = "Communion"

	if(!iscultist(usr) || usr.incapacitated())
		return

	var/input = sanitize_russian(stripped_input(usr, "Please choose a message to tell to the other acolytes.", "Voice of Blood", ""))
	if(!input)
		return

	if(!iscultist(usr) || usr.incapacitated())
		return	//we do this again because input() sleeps

	cultist_commune(usr, 0, input)
	return


/obj/item/weapon/tome
	name = "arcane tome"
	desc = "An old, dusty tome with frayed edges and a sinister-looking cover."
	icon_state ="tome"
	throw_speed = 2
	throw_range = 5
	w_class = 2
	var/list/known_runes = null

/obj/item/weapon/tome/New()
	..()
	known_runes = shuffle(subtypesof(/obj/effect/rune) - /obj/effect/rune/malformed)
	var/known_amount = round((known_runes.len)/2)
	known_runes.Cut(known_amount)

/obj/item/weapon/tome/examine(mob/user)
	..()
	if(iscultist(user))
		user << "The scriptures of the Geometer. Allows the scribing of runes and access to the knowledge archives of the cult of Nar-Sie."

/obj/item/weapon/tome/attack(mob/living/M, mob/living/user)
	if(istype(M,/mob/dead/observer))
		M.invisibility = 0
		user.visible_message("<span class='warning'>[user] strikes the air with [src], and a ghost appears!</span>", \
							 "<span class='cult'>You drag the ghost to your plane of reality!</span>")
		add_logs(user, M, "smacked", src)
		return
	if(!istype(M))
		return
	if(!iscultist(user))
		return ..()
	if(iscultist(M))
		if(M.reagents && M.reagents.has_reagent("holywater")) //allows cultists to be rescued from the clutches of ordained religion
			user << "<span class='cult'>You remove the taint from [M].</span>"
			var/holy2unholy = M.reagents.get_reagent_amount("holywater")
			M.reagents.del_reagent("holywater")
			M.reagents.add_reagent("unholywater",holy2unholy)
			add_logs(user, M, "smacked", src, " removing the holy water from them")
		return
	M.take_organ_damage(0, 15) //Used to be a random between 5 and 20
	playsound(M, 'sound/weapons/sear.ogg', 50, 1)
	M.visible_message("<span class='danger'>[user] strikes [M] with the arcane tome!</span>", \
					  "<span class='userdanger'>[user] strikes you with the tome, searing your flesh!</span>")
	flick("tome_attack", src)
	user.do_attack_animation(M)
	add_logs(user, M, "smacked", src)

/obj/item/weapon/tome/attack_self(mob/user)
	if(!iscultist(user))
		user << "<span class='warning'>[src] seems full of unintelligible shapes, scribbles, and notes. Is this some sort of joke?</span>"
		return
	open_tome(user)

/obj/item/weapon/tome/proc/open_tome(mob/user)
	var/choice = alert(user,"You open the tome...",,"Scribe Rune","Read Tome")
	switch(choice)
		if("Read Tome")
			read_tome(user)
		if("Scribe Rune")
			scribe_rune(user)

/obj/item/weapon/tome/proc/read_tome(mob/user)
	var/text = ""
	text += "<center><font color='red' size=3><b><i>Archives of the Dark One</i></b></font></center><br><br><br>"
	text += "As a member of the cult, your goals are almost or entirely impossible to complete without special aid from the Geometer's plane. The primary method of doing this are <b>runes</b>. These \
	scribings, drawn in blood, are concentrated nodes of the magic within Nar-Sie's realm and will allow the performance of many tasks to aid you and the rest of the cult in your objectives. Runes \
	have many different names, and almost all of them are known as Rites. Each follower of the Geometer is only able to use a subset of these, thus you must go forth and meet your fellow followers. \
	A small description of each rune can be found below.<br><br>A rune's name and effects can be revealed by examining the rune. <br><br><br>"

	text += "<font color='red'><b>Teleport</b></font><br>The Rite of Translocation is a unique rite in that it requires a keyword before the scribing can begin. When invoked, the rune will \
	search for other Rites of Translocation with the same keyword. Assuming one is found, the user will be instantaneously transported to the location of the other rune. If more than two runes are scribed \
	with the same keyword, it will choose randomly between all eligible runes and send the invoker to one of them.<br><br>"

	text += "<font color='red'><b>Teleport Other</b></font><br>The Rite of Forced Translocation, like the Rite of Translocation, works by teleporting the person on the rune to one of the \
	same keyword. However, this rune will only work on people other than the user, allowing the user to send any living creature somewhere else.<br><br>"

	text += "<font color='red'><b>Sacrifice</b></font><br>The Rite of Tribute is used to offer sacrifice to the Geometer. Simply place any living creature upon the rune and invoke it (this will not \
	target cultists!). If this creature has a mind, a soul shard will be created and the creature's soul transported to it. This rune is required if the cult's objectives include the sacrifice of a crew \
	member.<br><br>"

	text += "<font color='red'><b>Raise Dead</b></font><br>The Rite of Resurrection is a delicate rite that requires two corpses. To perform the ritual, place the corpse you wish to revive onto \
	the rune and the offering body adjacent to it. When the rune is invoked, the body to be sacrificed will turn to dust, the life force flowing into the revival target. Assuming the target is not moved \
	within a few seconds, they will be brought back to life, healed of all ailments.<br><br>"

	text += "<font color='red'><b>Veil Runes</b></font><br>The Rite of Obscurity is a rite that will cause all nearby runes to become invisible. The runes will still be considered by other rites \
	(such as the Rite of Translocation) but will be unusuable directly. Use the same rite once more to reveal these runes once more.<br><br>"

	text += "<font color='red'><b>Electromagnetic Disruption</b></font><br>Robotic lifeforms have time and time again been the downfall of fledgling cults. The Rite of Disruption may allow you to gain the upper \
	hand against these pests. By using the rune, a large electromagnetic pulse will be emitted from the rune's location.<br><br>"

	text += "<font color='red'><b>Astral Communion</b></font><br>The Rite of Astral Communion is perhaps the most ingenious rune that is usable by a single person. Upon invoking the rune, the \
	user's spirit will be ripped from their body. In this state, the user's physical body will be locked in place to the rune itself - any attempts to move it will result in the rune pulling it back. \
	The body will also take constant damage while in this form, and may even die. The user's spirit will contain their consciousness, and will allow them to freely wander the station as a ghost. This may \
	also be used to commune with the dead.<br><br>"

	text += "<font color='red'><b>Form Shield</b></font><br>While simple, the Rite of the Corporeal Shield serves an important purpose in defense and hindering passage. When invoked, the \
	rune will draw a small amount of life force from the user and make the space above the rune completely dense, rendering it impassable to all but the most complex means. The rune may be invoked again to \
	undo this effect and allow passage again.<br><br>"

	text += "<font color='red'><b>Debilitate</b></font><br>The Rite of the Shadowed Mind is simple. When invoked, it will cause all non-cultists that can see its rune to become deaf, blind and mute for a \
	considerable amount of time.<br><br>"

	text += "<font color='red'><b>Stun</b></font><br>Though the Rite of Blazing Light is weak when invoked normally, merely disorienting and disabling nearby non-cultists, non-cultists that step on the rune \
	will be stunned without expending its power. However, the disorientation caused by this rune is quite brief, and when invoked directly, it will not remain for further invocation.<br><br>"

	text += "<font color='red'><b>Summon Cultist</b></font><br>The Rite of Joined Souls requires two acolytes to use. When invoked, it will allow the user to summon a single cultist to the rune from \
	any location. This will deal a moderate amount of damage to all invokers.<br><br>"

	text += "<font color='red'><b>Imbue Talisman</b></font><br>The Rite of Binding is the only way to create talismans. A blank sheet of paper must be on top of the rune, with a valid rune nearby. After \
	invoking it, the paper will be converted into a talisman, and the rune inlaid upon it.<br><br>"

	text += "<font color='red'><b>Fabricate Shell</b></font><br>The Rite of Fabrication is the main way of creating construct shells. To use it, one must place five sheets of plasteel on top of the rune \
	and invoke it. The sheets will them be twisted into a construct shell, ready to recieve a soul to occupy it.<br><br>"

	text += "<font color='red'><b>Summon Armaments</b></font><br>The Rite of Arming will equip the user with armored robes, a backpack, an eldrich longsword, and a pair of boots. Any items that cannot \
	be equipped will not be summoned.<br><br>"

	text += "<font color='red'><b>Drain Life</b></font><br>The Rite of Leeching will drain the life of any non-cultist above the rune and heal the invoker for the same amount.<br><br>"

	text += "<font color='red'><b>Blood Boil</b></font><br>The Rite of Boiling Blood may be considered one of the most dangerous rites composed by the cult of Nar-Sie. When invoked, it will do a \
	massive amount of damage to all non-cultist viewers, but it will also emit an explosion upon invocation. Use with caution<br><br>"

	text += "<font color='red'><b>Immolate</b></font><br>The Rite of the Cleansing Flame is a weaker offensive rite, fit to be used by a lone cultist. When its rune is invoked, it will set any non-cultists \
	that can see it on fire. However, it will also burn its user.<br><br>"

	text += "<font color='red'><b>Time Stop</b></font><br>The Rite of Dimensional Corruption is a versatile rite that can be very strong when protecting our cult from the enemies of the Geometer. \
	As it is invoked, it will rend and reshape reality around itself, stopping time for all those who don't follow the teachings of the Geometer. However, it requires more than one ritual soul as a \
	catalyst, and its power is bound to overflow and hurt its casters.<br><br>"

	text += "<font color='red'><b>Manifest Spirit</b></font><br>If you wish to bring a spirit back from the dead with a wish for vengeance and desire to serve, the Rite of Spectral \
	Manifestation can do just that. When invoked, any spirits above the rune will be brought to life as a human wearing nothing that seeks only to serve you and the Geometer. However, the spirit's link \
	to reality is fragile - you must remain on top of the rune, and you will slowly take damage. Upon stepping off the rune, the spirits will dissipate, dropping their items to the ground. You may manifest \
	multiple spirits with one rune, but you will rapidly take damage in doing so.<br><br>"

	text += "While runes are excellent for many tasks, they lack portability. The advent of <b>talismans</b> has, to a degree, solved this inconvenience. Simply put, a talisman is a piece of paper with a \
	rune inlaid within it. The words of the rune can be whispered in order to invoke its effects, although usually to a lesser extent. To create a talisman, simply use a Rite of Binding as described above. \
	Unless stated otherwise, talismans are invoked by activating them in your hand. A list of valid rites, as well as the effects of their talisman form, can be found below.<br><br><br>"

	text += "<font color='red'><b>Talisman of Teleportation</b></font><br>The talisman form of the Rite of Translocation will transport the invoker to a randomly chosen rune of the same keyword, then \
	disappear.<br><br>"

	text += "<font color='red'><b>Talismans of Veiling</b></font><br>This talisman functions identically to its rune counterpart.It will disappear after one use.<br><br>"

	text += "<font color='red'><b>Talisman of Electromagnetic Pulse</b></font><br>This talisman functions like the Rite of Disruption. It disappears after one use.<br><br>"

	text += "<font color='red'><b>Talisman of Immolation</b></font><br>This talisman functions exactly like the Rite of Cleansing Flame. It can only be used once.<br><br>"

	var/datum/browser/popup = new(user, "tome", "", 800, 600)
	popup.set_content(text)
	popup.open()
	return 1

/obj/item/weapon/tome/proc/scribe_rune(mob/user)
	var/chosen_keyword
	var/rune_to_scribe
	var/entered_rune_name
	var/list/possible_runes = list()
	for(var/T in known_runes)
		var/obj/effect/rune/R = T
		if(initial(R.cultist_name))
			possible_runes += initial(R.cultist_name) //This is to allow the menu to let cultists select runes by name rather than by object path. I don't know a better way to do this
	if(!possible_runes.len)
		return
	entered_rune_name = input(user, "Choose a rite to scribe.", "Sigils of Power") as null|anything in possible_runes
	if(!Adjacent(user) || !src || qdeleted(src) || user.incapacitated())
		return
	for(var/T in typesof(/obj/effect/rune))
		var/obj/effect/rune/R = T
		if(initial(R.cultist_name) == entered_rune_name)
			rune_to_scribe = R
			if(initial(R.req_keyword))
				var/the_keyword = sanitize_russian(stripped_input(usr, "Please enter a keyword for the rune.", "Enter Keyword", ""))
				if(!the_keyword)
					return
				chosen_keyword = the_keyword
			break
	if(!rune_to_scribe)
		return
	if(!Adjacent(user) || !src || qdeleted(src) || user.incapacitated())
		return
	user.visible_message("<span class='warning'>[user] cuts open their arm and begins writing in their own blood!</span>", \
						 "<span class='cult'>You slice open your arm and begin drawing a sigil of the Geometer.</span>")
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		C.apply_damage(0.1, BRUTE, pick("l_arm", "r_arm"))
	if(!do_after(user, 50, target = get_turf(user)))
		return
	user.visible_message("<span class='warning'>[user] creates a strange circle in their own blood.</span>", \
						 "<span class='cult'>You finish drawing the arcane markings of the Geometer.</span>")
	var/obj/effect/rune/R = new rune_to_scribe(get_turf(user))
	if(chosen_keyword)
		R.keyword = chosen_keyword
