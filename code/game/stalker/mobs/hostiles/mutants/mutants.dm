/mob/living/simple_animal/hostile/mutant
	stat_attack = 2
	fearless = 0
	var/gib_targets = 1 //������
	icon = 'icons/stalker/stalker.dmi'
	var/deletable = 0 //Self-deletable dead bodies
	var/bodyparts
	var/freshmeat = 1

/mob/living/simple_animal/hostile/mutant/death(gibbed)
	..()
	if(deletable)
		spawn(300)
		qdel(src)

/mob/living/simple_animal/hostile/mutant/AttackingTarget()
	..()
	if(istype(target, /mob/living))
		var/mob/living/L = target
		if (L.stat && gib_targets)
			if(ishuman(L))
				var/mob/living/carbon/human/H = L
				if(prob(25))
					H.unEquip(H.ears)
				if(prob(25))
					H.unEquip(H.gloves)
				if(prob(25))
					H.unEquip(H.glasses)
				if(prob(25))
					H.unEquip(H.head)
				if(prob(25))
					H.unEquip(H.shoes)
				H.unEquip(H.back)
				H.unEquip(H.wear_id)
				H.unEquip(H.belt)
			L.gib()
			visible_message("<span class='danger'>[src] ��������� [L] �� �������!</span>")
			src << "<span class='userdanger'>�� ���� [L] � ��������������� ���� ��������!</span>"
			src.revive()

/mob/living/simple_animal/hostile/mutant/mrspooky
	name = "Mr.Spooky"
	desc = "���&#255;��&#255; ����� ������, 3spooky5u"
	icon = 'icons/mob/human.dmi'
	icon_state = "skeleton_s"
	icon_living = "skeleton_s"
	icon_dead = "skeleton_dead"
	turns_per_move = 5
	speak_emote = list("spooks")
	emote_see = list("spooks")
	a_intent = "harm"
	maxHealth = 100
	fearborder = 30
	health = 40
	speed = 1
	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15
	minbodytemp = 0
	maxbodytemp = 1500
	healable = 0 //they're skeletons how would bruise packs help them??
	attacktext = "spooks"
	attack_sound = 'sound/hallucinations/wail.ogg'
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 10
	environment_smash = 1
	robust_searching = 1
	search_objects = 1
	gold_core_spawnable = 1
	faction = list("skeleton")
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 8
	layer = MOB_LAYER - 0.1
	deathmessage = "Mr.Spooky is too spooky for himself!"
	del_on_death = 1
	loot = list(/obj/effect/decal/remains/human)

/mob/living/simple_animal/hostile/mutant/dog
	name = "dog mutant"
	desc = "�����������&#255; ����&#255; ������."
	turns_per_move = 8
	speed = 6
	a_intent = "harm"
	harm_intent_damage = 5
	icon_state = "stalker_dog"
	icon_living = "stalker_dog"
	icon_dead = "stalker_dog_dead"
	attacktext = "������"
	search_objects = 1
	speak_emote = list("������", "�����")
	emote_see = list("����")
	faction = list("stalker_mutants1")
	attack_sound = 'sound/stalker/mobs/mutants/dog_attack.ogg'
	melee_damage_lower = 10
	melee_damage_upper = 20
	maxHealth = 25
	fearborder = 10
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	healable = 1
	robust_searching = 1
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	deathmessage = "������ ����� �������� ���."
	del_on_death = 0
	minbodytemp = 0
	maxbodytemp = 1500
	environment_smash = 0
	layer = MOB_LAYER - 0.1
//	loot = list(/obj/item/weapon/stalker/loot/dog_tail, /obj/nothing, /obj/nothing, /obj/nothing, /obj/nothing)
//	random_loot = 1
	bodyparts = 1

/mob/living/simple_animal/hostile/mutant/snork
	name = "snork"
	desc = "�����-�� ��� ���� ���������."
	turns_per_move = 8
	speed = 3
	a_intent = "harm"
	search_objects = 1
	icon_state = "snork"
	icon_living = "snork"
	icon_dead = "snork_dead"
	attacktext = "�������� ��������� ����&#255;��"
	speak_emote = list("�����")
	emote_see = list("���������� �����")
	maxHealth = 70
	healable = 1
	melee_damage_lower = 20
	attack_sound = 'sound/stalker/mobs/mutants/flesh_attack.ogg'
	melee_damage_upper = 30
	fearborder = 0
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	del_on_death = 0
	environment_smash = 1
	robust_searching = 0
	deathmessage = "����� ������ ����� � ������ ��� ��������."
	layer = MOB_LAYER - 0.1
	loot = /obj/nothing
	random_loot = 1
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)

/mob/living/simple_animal/hostile/mutant/flesh
	name = "flesh"
	desc = "������������ ������."
	turns_per_move = 5
	speed = 1
	a_intent = "harm"
	search_objects = 1
	icon_state = "plot"
	icon_living = "plot"
	icon_dead = "plot_dead"
	attacktext = "����"
	speak_emote = list("�������")
	emote_see = list("���������� ������")
	maxHealth = 40
	healable = 1
	melee_damage_lower = 20
	attack_sound = 'sound/stalker/mobs/mutants/flesh_attack.ogg'
	melee_damage_upper = 30
	fearborder = 18
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	del_on_death = 0
	environment_smash = 1
	robust_searching = 0
	deathmessage = "����� ������ ������������ ����."
	layer = MOB_LAYER - 0.1
//	loot = list(/obj/item/weapon/stalker/loot/flesh_eye, /obj/nothing, /obj/nothing, /obj/nothing, /obj/nothing, /obj/nothing )
//	random_loot = 1
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	bodyparts = 1

/mob/living/simple_animal/hostile/mutant/kaban
	name = "boar"
	desc = "�������� ���������."
	turns_per_move = 5
	speed = 0.5
	a_intent = "harm"
	search_objects = 1
	icon_state = "kaban"
	icon_living = "kaban"
	icon_dead = "kaban_dead"
	attacktext = "����"
	speak_emote = list("�������")
	emote_see = list("���������� ������")
	maxHealth = 150
	healable = 1
	melee_damage_lower = 20
	attack_sound = 'sound/stalker/mobs/mutants/flesh_attack.ogg'
	melee_damage_upper = 45
	fearborder = 18
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	del_on_death = 0
	environment_smash = 1
	robust_searching = 0
	deathmessage = "����� �������� � ���� �� �����."
	layer = MOB_LAYER - 0.1
//	loot = list(/obj/item/weapon/stalker/loot/boar_leg, /obj/nothing, /obj/nothing, /obj/nothing, /obj/nothing, /obj/nothing )
//	random_loot = 1
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	bodyparts = 1