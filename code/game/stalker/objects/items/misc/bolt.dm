/obj/item/weapon/bolt
	name = "Bolt"
	desc = "Ржавый болт. Зачем он вообще нужен?"
	icon = 'icons/stalker/bolt.dmi'
	icon_state = "bolt"
	force = 0
	throwforce = 0
	w_class = 1

/obj/item/weapon/bolt/New()
	..()
	spawn(50)
		if(usr.l_hand == src || usr.r_hand == src)
			qdel(src)
			usr << "<span class='notice'>Болт странным образом исчезает из ваших рук!</span>"
		else
			qdel(src)

/obj/item/weapon/manybolts
	name = "A pile of bolts"
	desc = "Куча ржавых болтов. Зачем их столько?"
	icon = 'icons/stalker/bolt.dmi'
	icon_state = "kucha"
	force = 0
	throwforce = 0
	w_class = 2

/obj/item/weapon/manybolts/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is starting to eat old rusty bolts!  It looks like \he's trying to commit suicide.</span>")
	sleep(25)
	if(user.l_hand == src || user.r_hand == src)
		user.visible_message("<span class='suicide'>[user] ate too many of the bolts!</span>")
		return(OXYLOSS)

/obj/item/weapon/manybolts/MouseDrop(atom/over_object)
	if(iscarbon(usr) || isdrone(usr)) //all the check for item manipulation are in other places, you can safely open any storages as anything and its not buggy, i checked
		var/mob/M = usr
		var/bolt = new /obj/item/weapon/bolt

		if(!over_object)
			return

		if(usr.l_hand == bolt || usr.r_hand == bolt)
			return

		if(!M.restrained() && !M.stat)
//			if(!istype(over_object, /obj/screen))
//				return content_can_dump(over_object, M)

			if(loc != usr || (loc && loc.loc == usr))
				return

//			playsound(loc, "rustle", 50, 1, -5)
			switch(over_object.name)
				if("r_hand")
					M << "<span class='notice'>Вы достаете один болт из кучи других болтов.</span>"
					M.put_in_r_hand(bolt)
				if("l_hand")
					M << "<span class='notice'>Вы достаете один болт из кучи других болтов.</span>"
					M.put_in_l_hand(bolt)