/obj/item/weapon/storage/firstaid/stalker
	icon = 'icons/stalker/items.dmi'
	icon_state = "apteka_red"
	desc = "Универсальный медицинский набор. Позвол&#255;ет справл&#255;тьс&#255; с травмами различного вида и степени сложности - ранени&#255;ми, ожогами, отравлени&#255;ми и прочим."

/obj/item/weapon/storage/firstaid/stalker/New()
	..()
	if(empty) return
	new /obj/item/stack/medical/bruise_pack/bint(src)
	new /obj/item/stack/medical/bruise_pack/bint(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/weapon/reagent_containers/hypospray/medipen(src)
	return

/obj/item/weapon/storage/firstaid/army
	icon = 'icons/stalker/items.dmi'
	icon_state = "apteka_blue"
	desc = "Специализированный медицинский набор дл&#255; борьбы с физическими повреждени&#255;ми и кровотечением. В него вход&#255;т компоненты дл&#255; ускорени&#255; свертывани&#255; крови, обезболивающие, антибиотики и иммунные стимул&#255;торы."

/obj/item/weapon/storage/firstaid/army/New()
	..()
	if(empty) return
	new /obj/item/stack/medical/bruise_pack/bint(src)
	new /obj/item/stack/medical/bruise_pack/bint(src)
	new /obj/item/stack/medical/bruise_pack/bint(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/weapon/reagent_containers/hypospray/medipen(src)
	return

/obj/item/weapon/storage/firstaid/science
	icon = 'icons/stalker/items.dmi'
	icon_state = "apteka_yellow"
	desc = "Медицинский набор, разработанный специально дл&#255; работы в услови&#255;х Зоны. Состав набора подобран как дл&#255; борьбы с ранени&#255;ми, так и дл&#255; вывода радионуклидов из организма. Преп&#255;тствует развитию лучевой болезни, а также снижает дозу накопленной радиации."

/obj/item/weapon/storage/firstaid/science/New()
	..()
	if(empty) return
	new /obj/item/weapon/reagent_containers/pill/patch/styptic(src)
	new /obj/item/weapon/reagent_containers/pill/patch/styptic(src)
	new /obj/item/weapon/reagent_containers/pill/patch/silver_sulf(src)
	new /obj/item/weapon/reagent_containers/pill/patch/silver_sulf(src)
	new /obj/item/weapon/reagent_containers/syringe/charcoal(src)
	new /obj/item/weapon/reagent_containers/hypospray/medipen/stalker/antirad(src)
	return

/obj/item/stack/medical/bruise_pack/bint
	name = "bruise pack"
	singular_name
	desc = "Перев&#255;зочный материал. Помогает остановить кровотечение."
	icon = 'icons/stalker/items.dmi'
	icon_state = "bint"