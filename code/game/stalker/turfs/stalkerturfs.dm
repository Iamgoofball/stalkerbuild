/turf/simulated/floor/plating/asteroid/snow/lite
	name = "snow"
	desc = "Выгл&#255;дит холодным."
	icon = 'icons/turf/snow.dmi'
	baseturf = /turf/simulated/floor/plating/asteroid/snow
	icon_state = "snow"
	icon_plating = "snow"
	temperature = 293
	slowdown = 4
	environment_type = "snow"
	dug = 1

/obj/structure/grille/stalker
	desc = "Хороший, крепкий железный забор."
	name = "fence"
	icon = 'icons/stalker/structure/structure.dmi'
	icon_state = "fence1"
	density = 1
	anchored = 1
	flags = CONDUCT
	layer = 2.9
	health = 10000000

/obj/structure/grille/stalker/ex_act(severity, target)
	return

/obj/structure/grille/stalker/attack_paw(mob/user)
	return

/obj/structure/grille/stalker/attack_hand(mob/living/user)
	user.do_attack_animation(src)
	return

/obj/structure/grille/stalker/attack_animal(var/mob/living/simple_animal/M)
	M.do_attack_animation(src)
	return

/obj/structure/grille/stalker/bullet_act(var/obj/item/projectile/Proj)
	if(!Proj)
		return
	..()
	if((Proj.damage_type != STAMINA)) //Grilles can't be exhausted to death
		return
	return

/obj/structure/grille/stalker/attackby(obj/item/weapon/W, mob/user, params)
	return

/obj/structure/grille/hitby(AM as mob|obj)
	..()
	return

/obj/structure/grille/stalker/wood
	desc = "Хороший, старый дерев&#255;нный забор."
	icon_state = "zabor_horizontal1"
	density = 1
	opacity = 0

/obj/structure/grille/stalker/beton
	icon = 'icons/stalker/structure/beton_zabor.dmi'
	desc = "Слишком крепкий."
	icon_state = "1"
	density = 1
	opacity = 1

/obj/structure/grille/stalker/beton/green
	icon = 'icons/stalker/structure/green_zabor.dmi'
	desc = "Зелённый забор лучше, чем серый."
	icon_state = "1"
	layer = 6.1

obj/structure/grille/stalker/beton/CanPass(atom/movable/mover, turf/target, height=0)
	if(height==0) return 1
	if(istype(mover) && mover.checkpass(PASSGRILLE))
		return 1
	else
		if(istype(mover, /obj/item/projectile) && density)
			return prob(0)
		else
			return !density

/turf/stalker
	name = "stalker turf"

/turf/stalker/floor
	name = "Grass"
	layer = TURF_LAYER

/turf/stalker/floor/digable


/turf/stalker/floor/digable/grass
	icon = 'icons/stalker/turfs/zemlya.dmi'
	icon_state = "grass1"

/turf/stalker/floor/digable/grass/New()
	icon_state = "grass[rand(1, 3)]"

/turf/stalker/floor/digable/grass/dump
	icon = 'icons/stalker/turfs/zemlya.dmi'
	icon_state = "dump_grass1"

/turf/stalker/floor/digable/grass/dump/New()
	icon_state = "dump_grass[rand(1, 3)]"

/turf/stalker/floor/sidor
	name = "floor"
	icon = 'icons/turf/beton.dmi'
	icon_state = "sidorpol"

/obj/machinery/door/unpowered/stalker
	icon = 'icons/turf/beton.dmi'

/turf/stalker/floor/asphalt
	name = "road"
	icon = 'icons/stalker/turfs/asphalt.dmi'
	icon_state = "road3"
	layer = 2.1

/turf/stalker/floor/tropa
	name = "road"
	icon = 'icons/stalker/turfs/tropa.dmi'
	icon_state = "road3"
	layer = 2.1

/turf/stalker/floor/road
	name = "road"
	icon = 'icons/stalker/turfs/building_road.dmi'
	icon_state = "road2"
	layer = 2.1

/turf/stalker/floor/gryaz
	name = "dirt"
	icon = 'icons/stalker/turfs/zemlya.dmi'
	icon_state = "gryaz1"
	layer = 2.2

/turf/stalker/floor/gryaz/New()
	icon_state = "gryaz[rand(1, 3)]"

/turf/stalker/floor/gryaz/gryaz2
	icon_state = "gryaz2"

/turf/stalker/floor/gryaz/gryaz3
	icon_state = "gryaz3"

/obj/structure/stalker/rails
	name = "rails"
	icon = 'icons/stalker/turfs/rails.dmi'
	icon_state = "sp"
	layer = 2.3
	anchored = 1
	density = 0
	opacity = 0

/turf/stalker/floor/plasteel
	name = "floor"
	icon = 'icons/stalker/turfs/floor.dmi'

/turf/stalker/floor/plasteel/plita
	icon_state = "plita1"

/turf/stalker/floor/plasteel/plita/New()
	icon_state = "plita[rand(1, 4)]"

/turf/stalker/floor/plasteel/plitochka
	icon_state = "plitka1"

/turf/stalker/floor/plasteel/plitochka/New()
	icon_state = "plitka[rand(1, 7)]"

/turf/stalker/floor/plasteel/plitka
	icon_state = "plitka_old1"

/turf/stalker/floor/plasteel/plitka/New()
	icon_state = "plitka_old[rand(1, 8)]"

/turf/stalker/floor/water
	name = "water"
	icon = 'icons/stalker/turfs/water.dmi'
	icon_state = "tupo_woda"

/turf/stalker/floor/wood
	icon = 'icons/stalker/turfs/floor.dmi'
	name = "floor"

/turf/stalker/floor/wood/brown
	icon_state = "wooden_floor"

/turf/stalker/floor/wood/grey
	icon_state = "wooden_floor2"

/turf/stalker/floor/wood/black
	icon_state = "wooden_floor3"

/turf/stalker/floor/wood/oldgor
	icon_state = "wood1"

/turf/stalker/floor/wood/oldvert
	icon_state = "woodd1"

/turf/stalker/floor/agroprom/beton
	name = "floor"
	icon = 'icons/stalker/turfs/pol_agroprom.dmi'
	icon_state = "beton1"

/turf/stalker/floor/agroprom/beton/New()
	icon_state = "beton[rand(1, 4)]"

/turf/stalker/floor/agroprom/gryaz
	name = "dirt"
	icon = 'icons/stalker/turfs/pol_agroprom.dmi'
	icon_state = "gryaz1"

/turf/stalker/floor/agroprom/gryaz/New()
	icon_state = "gryaz[rand(1, 11)]"