/obj/item/weapon/gun/projectile/revolver/bm16  // Горизонталка
	name = "BM-16"
	desc = "Охотничье ружьё - горизонталка. Довольно мощное, в самый раз дл&#255; охоты."
	icon_state = "bm16"
	item_state = "shotgun"
	w_class = 4
	force = 10
	flags = CONDUCT
	slot_flags = SLOT_BELT
	mag_type = /obj/item/ammo_box/magazine/internal/shot/stalker/bm16
	durability = 40
	fire_sound = 'sound/stalker/weapons/bm16_shot.ogg'
	sawn_desc = "Значительно компактней и легче новой двустволки, но эффективен только в ближнем бою. Один из самых распространённых видов оружи&#255; у новичков."
	randomspread = 0

/obj/item/weapon/gun/projectile/revolver/bm16/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/ammo_box) || istype(A, /obj/item/ammo_casing))
		chamber_round()
	if(istype(A, /obj/item/weapon/melee/energy))
		var/obj/item/weapon/melee/energy/W = A
		if(W.active)
			sawoff(user)
	if(istype(A, /obj/item/weapon/circular_saw) || istype(A, /obj/item/weapon/gun/energy/plasmacutter))
		sawoff(user)

/obj/item/weapon/gun/projectile/revolver/bm16/attack_self(mob/living/user)
	var/num_unloaded = 0
	while (get_ammo() > 0)
		var/obj/item/ammo_casing/CB
		CB = magazine.get_round(0)
		chambered = null
		CB.loc = get_turf(src.loc)
		CB.update_icon()
		num_unloaded++
	if (num_unloaded)
		user << "<span class='notice'>You break open \the [src] and unload [num_unloaded] shell\s.</span>"
	else
		user << "<span class='warning'>[src] is empty!</span>"

/obj/item/weapon/gun/projectile/revolver/bm16/toz34  //  Вертикалка
	name = "TOZ-34"
	desc = "Внутрикурковое двуствольное охотничье ружье с вертикально расположенными стволами. Широко распространённое и ничем особо не примечательное охотничье ружьё - 'вертикалка'."
	icon_state = "toz34"
	force = 15
	durability = 70

/obj/item/weapon/gun/projectile/shotgun/chaser  //  Winchester 1300
	name = "Chaser-13"
	desc = "Гладкоствольное помповое ружьё американского производства, созданное дл&#255; применени&#255; в самых неблагопри&#255;тных услови&#255;х и отличающеес&#255; высокой надёжностью. Все детали снабжены антикоррозийным покрытием."
	icon_state = "chaser"
	item_state = "chaser"
	durability = 100
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_BACK2
	mag_type = /obj/item/ammo_box/magazine/internal/shot/chaser
	w_class = 4
	randomspread = 0

/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff
	name = "sawn-off BM-16"
	desc = "Значительно компактней и легче новой двустволки, но эффективен только в ближнем бою. Один из самых распространённых видов оружи&#255; у новичков."
	sawn_state = SAWN_OFF
	item_state = "gun"
	w_class = 3
	durability = 25

/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff/New()
	..()
	update_icon()

