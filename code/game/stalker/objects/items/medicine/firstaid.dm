/obj/item/weapon/storage/firstaid/stalker
	icon = 'icons/stalker/items.dmi'
	icon_state = "apteka_red"
	desc = "������������� ����������� �����. ������&#255;�� ������&#255;���&#255; � �������� ���������� ���� � ������� ��������� - ������&#255;��, �������, ���������&#255;�� � ������."

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
	desc = "������������������ ����������� ����� ��&#255; ������ � ����������� ����������&#255;�� � �������������. � ���� ����&#255;� ���������� ��&#255; ��������&#255; ����������&#255; �����, ��������������, ����������� � �������� ������&#255;����."

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
	desc = "����������� �����, ������������� ���������� ��&#255; ������ � ������&#255;� ����. ������ ������ �������� ��� ��&#255; ������ � ������&#255;��, ��� � ��&#255; ������ ������������� �� ���������. ����&#255;������� �������� ������� �������, � ����� ������� ���� ����������� ��������."

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
	desc = "�����&#255;������ ��������. �������� ���������� ������������."
	icon = 'icons/stalker/items.dmi'
	icon_state = "bint"