//In here: Hatch and Ascendance
var/list/possibleShadowlingNames = list("Controller") //Unpronouncable 2: electric boogalo
/obj/effect/proc_holder/spell/self/shadowling_hatch
	name = "Hatch"
	desc = "Casts off your disguise."
	panel = "Shadowling Evolution"
	charge_max = 3000
	human_req = 1
	clothes_req = 0
	action_icon_state = "hatch"

/obj/effect/proc_holder/spell/self/shadowling_hatch/cast(list/targets,mob/user = usr)
	if(user.stat || !ishuman(user) || !user || !is_shadow(user || isinspace(user)))
		return
	var/mob/living/carbon/human/H = user
	for(var/obj/item/I in H) //drops all items
		H.unEquip(I)
	var/newNameId = pick(possibleShadowlingNames)
	possibleShadowlingNames.Remove(newNameId)
	H.real_name = newNameId
	H.name = user.real_name
	H.stunned = 0 //Same as above. Due to hulks.
	H.visible_message("<span class='warning'>The chrysalis explodes in a shower of purple flesh and fluid!</span>")
	H.underwear = "Nude"
	H.undershirt = "Nude"
	H.socks = "Nude"
	H.faction |= "faithless"
	H.equip_to_slot_or_del(new /obj/item/clothing/under/shadowling(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/shadowling(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/space/shadowling(H), slot_wear_suit)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/shadowling(H), slot_head)
	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/shadowling(H), slot_gloves)
	H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/shadowling(H), slot_wear_mask)
	H.equip_to_slot_or_del(new /obj/item/clothing/glasses/night/shadowling(H), slot_glasses)
	H.set_species(/datum/species/shadow/ling) //can't be a shadowling without being a shadowling
	H.mind.remove_spell(src)
	sleep(10)
	H << "<span class='shadowling'><b><i>Your powers are awoken. You may now live to your fullest extent. Remember your goal. Cooperate with your thralls and allies.</b></i></span>"
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/enthrall(null))
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/glare(null))
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/aoe_turf/veil(null))
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/self/shadow_walk(null))
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/aoe_turf/flashfreeze(null))
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/self/collective_mind(null))
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/self/shadowling_regenarmor(null))
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/shadowling_extend_shuttle(null))



/obj/effect/proc_holder/spell/self/shadowling_ascend
	name = "Ascend"
	desc = "Enters your true form."
	panel = "Shadowling Evolution"
	charge_max = 3000
	clothes_req = 0
	action_icon_state = "ascend"

/obj/effect/proc_holder/spell/self/shadowling_ascend/cast(list/targets,mob/user = usr)
	var/mob/living/carbon/human/H = user
	if(!shadowling_check(H))
		return
	var/hatch_or_no = alert(H,"It is time to ascend. Are you sure about this?",,"Yes","No")
	switch(hatch_or_no)
		if("No")
			H << "<span class='warning'>You decide against ascending for now."
			charge_counter = charge_max
			return
		if("Yes")
			H.notransform = 1
			H.visible_message("<span class='warning'>[H]'s things suddenly slip off. They gently rise into the air, red light glowing in their eyes.</span>", \
							"<span class='shadowling'>You rise into the air and get ready for your transformation.</span>")

			for(var/obj/item/I in H) //drops all items
				H.unEquip(I)

				sleep(50)

				H.visible_message("<span class='warning'>[H]'s skin begins to crack and harden.</span>", \
								"<span class='shadowling'>Your flesh begins creating a shield around yourself.</span>")

				sleep(100)
				H.visible_message("<span class='warning'>The small horns on [H]'s head slowly grow and elongate.</span>", \
								  "<span class='shadowling'>Your body continues to mutate. Your telepathic abilities grow.</span>") //y-your horns are so big, senpai...!~

				sleep(90)
				H.visible_message("<span class='warning'>[H]'s body begins to violently stretch and contort.</span>", \
								  "<span class='shadowling'>You begin to rend apart the final barriers to godhood.</span>")

				sleep(40)
				H << "<i><b>Yes!</b></i>"
				sleep(10)
				H << "<i><b><span class='big'>YES!!</span></b></i>"
				sleep(10)
				H << "<i><b><span class='reallybig'>YE--</span></b></i>"
				sleep(1)
				for(var/mob/living/M in orange(7, H))
					M.Weaken(10)
					M << "<span class='userdanger'>An immense pressure slams you onto the ground!</span>"
				world << "<font size=5><span class='shadowling'><b>\"VYSHA NERADA YEKHEZET U'RUU!!\"</font></span>"
				world << 'sound/hallucinations/veryfar_noise.ogg'
				for(var/obj/machinery/power/apc/A in apcs_list)
					A.overload_lighting()
				var/mob/A = new /mob/living/simple_animal/ascendant_shadowling(H.loc)
				for(var/obj/effect/proc_holder/spell/S in H.mind.spell_list)
					if(S == src) continue
					H.mind.remove_spell(S)
				H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/annihilate(null))
				H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/hypnosis(null))
				H.mind.AddSpell(new /obj/effect/proc_holder/spell/self/shadowling_phase_shift(null))
				H.mind.AddSpell(new /obj/effect/proc_holder/spell/aoe_turf/ascendant_storm(null))
				H.mind.AddSpell(new /obj/effect/proc_holder/spell/self/shadowling_hivemind_ascendant(null))
				H.mind.transfer_to(A)
				A.name = H.real_name
				if(A.real_name)
					A.real_name = H.real_name
				H.invisibility = 60 //This is pretty bad, but is also necessary for the shuttle call to function properly
				H.loc = A
				sleep(50)
				if(!ticker.mode.shadowling_ascended)
					SSshuttle.emergency.request(null, 0.3)
				ticker.mode.shadowling_ascended = 1
				A.mind.remove_spell(src)
				qdel(H)
