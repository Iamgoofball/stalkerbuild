/obj/item/weapon/stalker
	icon = 'icons/stalker/weapons.dmi'

/obj/item/weapon/stalker/knife
	name = "knife"
	desc = "Серьезное оружие в умелых руках."
	icon_state = "knife"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = 25
	throwforce = 15
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")

/obj/item/weapon/stalker/knife/attack(mob/L, mob/living/carbon/human/user)
	if(istype(L) && (istype(L, /mob/living/simple_animal/hostile/mutant/dog) || istype(L, /mob/living/simple_animal/hostile/mutant/flesh) || istype(L, /mob/living/simple_animal/hostile/mutant/snork) || istype(L, /mob/living/simple_animal/hostile/mutant/kaban)))
		var/mob/living/simple_animal/hostile/mutant/M = L
		if(M.stat == DEAD)
			if(user.a_intent != "harm")
				..()
			else
				if(!M.freshmeat)
					user << "<span class='warning'>There's nothing valuable left.</span>"
				else
					if(M.bodyparts)
						var/list/meatparts
						if(istype(M, /mob/living/simple_animal/hostile/mutant/dog))
							if(prob(50))
								meatparts += "Dog Tail"
								if(prob(20))
									if(prob(20))
										meatparts += "Slab of Meat (x2)"
									else
										meatparts += "Slab of Meat"
							else
								if(prob(50))
									if(prob(20))
										meatparts += "Slab of Meat (x2)"
										if(prob(20))
											meatparts += "Dog Tail"
									else
										meatparts += "Slab of Meat"
										if(prob(20))
											meatparts += "Dog Tail"
						else
							if(istype(M, /mob/living/simple_animal/hostile/mutant/flesh))
								if(prob(50))
									meatparts += "Flesh Eye"
									if(prob(20))
										if(prob(40))
											meatparts += "Slab of Meat (x2)"
										else
											meatparts += "Slab of Meat"
								else
									if(prob(50))
										if(prob(40))
											meatparts += "Slab of Meat (x2)"
											if(prob(20))
												meatparts += "Flesh Eye"
										else
											meatparts += "Slab of Meat"
											if(prob(20))
												meatparts += "Flesh Eye"
							else
								if(istype(M, /mob/living/simple_animal/hostile/mutant/kaban))
									if(prob(50))
										meatparts += "Boar Leg"
										if(prob(20))
											if(prob(20))
												meatparts += "Slab of Meat (x2)"
											else
												meatparts += "Slab of Meat"
									else
										if(prob(50))
											if(prob(20))
												meatparts += "Slab of Meat (x2)"
												if(prob(20))
													meatparts += "Boar Leg"
											else
												meatparts += "Slab of Meat"
												if(prob(20))
													meatparts += "Boar Leg"
					/*	var/list/meatparts
						if(prob(50))
							meatparts += M.bodyparts(1)
							if(prob(20))
								meatparts += M.bodyparts(2)
						else
							if(prob(50))
								meatparts += M.bodyparts(2)
								if(prob(20))
									meatparts += M.bodyparts(1)*/
						if(!meatparts)
							user << "<span class='warning'>You didn't manage to find anything valuable.</span>"
							M.freshmeat = 0
						else
							var/S
							var/Splus
							var/meatchoice = input("What do you want to cut out?") in meatparts
							switch(meatchoice)
								if(null)
									return
								if("Dog Tail")
									S = new /obj/item/weapon/stalker/loot/dog_tail
								if("Flesh Eye")
									S = new /obj/item/weapon/stalker/loot/flesh_eye
								if("Boar Leg")
									S = new /obj/item/weapon/stalker/loot/boar_leg
								if("Slab of Meat")
									S = new /obj/item/weapon/reagent_containers/food/snacks/meat/slab/radioactive
								if("Slab of Meat (x2)")
									S = new /obj/item/weapon/reagent_containers/food/snacks/meat/slab/radioactive
									Splus = new /obj/item/weapon/reagent_containers/food/snacks/meat/slab/radioactive
							playsound(user.loc, 'sound/weapons/bladeslice.ogg', 50, 1)
							user << "<span class='notice'>You begin to cut out something interesting...</span>"
							if(!do_after(user, 60, 1, M.loc))	return
							playsound(user.loc, 'sound/weapons/bladeslice.ogg', 50, 1)
							user << "<span class='notice'>You successfully cut it out!</span>"
							user.put_in_hands(S)
							if(Splus)
								user.put_in_hands(Splus)
							M.freshmeat = 0
		else
			..()
	else
		..()