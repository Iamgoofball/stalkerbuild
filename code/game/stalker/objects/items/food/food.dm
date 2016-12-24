/obj/item/weapon/reagent_containers/food/snacks/stalker
	icon = 'icons/stalker/food.dmi'

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva
	name = "konserva"
	desc = "�������� '������� �������' � ������������ ���������� ���������� ����������������� ������. ���� �������� ����� �� �� ����."
	icon_state = "konserva"
	w_class = 2
	wrapped = 1
	//weight = 0.5
	trash = /obj/item/trash/konserva
	list_reagents = list("nutriment" = 13, "vitamin" = 2, "omnizine" = 0.5)
	var/icon_state_opened = "konserva_open"
	var/desc_opened = "����&#255;��� �� ����� ���������, �� ������ ����� �� ���������."

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/attack_self(mob/user)
	if(wrapped)
		Unwrap(user)
	else
		..()

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/proc/Unwrap(mob/user)
		icon_state = icon_state_opened
		desc = desc_opened
		user << "<span class='notice'>�� ���������� ��������.</span>"
		wrapped = 0

/obj/item/trash/konserva
	name = "empty can"
	desc = "������� �����."
	icon = 'icons/stalker/food.dmi'
	icon_state = "konserva_empty"
	w_class = 2
	//weight = 0.1

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti
	name = "shproti"
	desc = "������� ������."
	icon = 'icons/stalker/food.dmi'
	icon_state = "shproti0"
	icon_state_opened = "shproti1"
	list_reagents = list("nutriment" = 17, "vitamin" = 3, "omnizine" = 0.75)
	trash = /obj/item/trash/konserva/shproti
	desc_opened = "�������&#255; ����� �� ��������. ����&#255;��� ���������."

/obj/item/trash/konserva/shproti
	name = "empty can"
	icon = 'icons/stalker/food.dmi'
	icon_state = "shproti2"
	desc = "�����&#255; ����� �� ��� �����."

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/soup
	name = "soup"
	desc = "������� ������������������ ��� ��-���������."
	//weight = 0.7
	icon = 'icons/stalker/food.dmi'
	icon_state = "soup0"
	icon_state_opened = "soup1"
	list_reagents = list("nutriment" = 20, "vitamin" = 4, "omnizine" = 1)
	trash = /obj/item/trash/konserva/soup
	desc_opened = "����&#255;��� ���������."

/obj/item/trash/konserva/soup
	name = "empty can"
	icon = 'icons/stalker/food.dmi'
	icon_state = "soup2"

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/bobi
	name = "bobi"
	desc = "�������� '������� �������', ������."
	icon = 'icons/stalker/food.dmi'
	icon_state = "bobi0"
	icon_state_opened = "bobi1"
	list_reagents = list("nutriment" = 17, "vitamin" = 3, "omnizine" = 0.75)
	trash = /obj/item/trash/konserva/bobi
	desc_opened = "����&#255;��� ���������."

/obj/item/trash/konserva/bobi
	name = "empty can"
	icon = 'icons/stalker/food.dmi'
	icon_state = "bobi2"

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/govyadina2
	name = "tushenka"
	desc = "����� ������������������ ���&#255;����."
	//weight = 0.7
	icon = 'icons/stalker/food.dmi'
	icon_state = "govyadina0"
	icon_state_opened = "govyadina1"
	list_reagents = list("nutriment" = 20, "vitamin" = 4, "omnizine" = 1)
	trash = /obj/item/trash/konserva/govyadina
	desc_opened = "����&#255;��� ����� ���������."

/obj/item/trash/konserva/govyadina
	name = "empty can"
	icon = 'icons/stalker/food.dmi'
	icon_state = "govyadina2"

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/fish
	name = "fish"
	desc = "������ �������� '����&#255;��', ������ �� ������� ����"
	icon = 'icons/stalker/food.dmi'
	icon_state = "fish0"
	icon_state_opened = "fish1"
	list_reagents = list("nutriment" = 17, "vitamin" = 3, "omnizine" = 0.75)
	trash = /obj/item/trash/konserva/fish
	desc_opened = "����&#255;��� ����� ���������."

/obj/item/trash/konserva/fish
	name = "empty can"
	icon = 'icons/stalker/food.dmi'
	icon_state = "fish2"

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/sirok
	name = "cheese"
	desc = "����&#255; ����� ������� ���������� ����."
	//weight = 0.1
	icon = 'icons/stalker/food.dmi'
	icon_state = "sirok"
	icon_state_opened = "sirok1"
	list_reagents = list("nutriment" = 11, "vitamin" = 1, "omnizine" = 0.3)
	trash = /obj/item/trash/konserva/sirok
	desc_opened = "����&#255;��� ����� ���������."

/obj/item/trash/konserva/sirok
	name = "trash"
	//weight = 0.01
	icon = 'icons/stalker/food.dmi'
	icon_state = "sirok2"

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/snikers
	name = "snikers"
	desc = "�����&#255;���� ���������� ��������."
	//weight = 0.1
	icon = 'icons/stalker/food.dmi'
	icon_state = "snikers"
	icon_state_opened = "snikers1"
	list_reagents = list("nutriment" = 8, "sugar" = 6, "omnizine" = 0.2)
	trash = /obj/item/trash/konserva/snikers
	desc_opened = "����&#255;��� ����� ���������."

/obj/item/trash/konserva/snikers
	name = "trash"
	//weight = 0.01
	icon = 'icons/stalker/food.dmi'
	icon_state = "snikers2"

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/chocolate
	name = "Chocolate"
	desc = "��������&#255; ������ �������� ��������."
	//weight = 0.1
	icon = 'icons/stalker/food.dmi'
	icon_state = "Choco1"
	icon_state_opened = "Choco2"
	list_reagents = list("nutriment" = 9, "sugar" = 1, "omnizine" = 0.1, "energetic" = 5)
	trash = /obj/item/trash/konserva/chocolate
	desc_opened = "����&#255;��� ����� ���������."

/obj/item/trash/konserva/chocolate
	name = "trash"
	//weight = 0.01
	icon = 'icons/stalker/food.dmi'
	icon_state = "Choco3"

/obj/item/weapon/storage/box/MRE
	name = "MRE"
	desc = "��������� ��� ������������ �� �����."
	var/desc_opened = "�������� ��������� ��� ������������ �� �����."
	icon = 'icons/stalker/food.dmi'
	icon_state = "box1"
	var/icon_state_opened = "box3"
	storage_slots = 10
	var/wrapped = 1
	can_hold = list(/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva, /obj/item/trash/konserva, /obj/item/weapon/reagent_containers/food/drinks)

/obj/item/weapon/storage/box/MRE/New()
	..()
	new /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets(src)
	new /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets(src)
	new /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets(src)
	new /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets(src)
	new /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/kasha(src)
	new /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva1(src)
	new /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva2(src)
	new /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva3(src)
	new /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/chocolate(src)
	new /obj/item/weapon/reagent_containers/food/drinks/soda_cans/voda(src)

/obj/item/weapon/storage/box/MRE/attack_self(mob/user)
	if(wrapped)
		Unwrap(user)

/obj/item/weapon/storage/box/MRE/proc/Unwrap(mob/user)
		icon_state = icon_state_opened
		desc = desc_opened
		user << "<span class='notice'>�� ���������� ��������</span>"
		wrapped = 0

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets
	name = "Galets"
	desc = "������ ���������, ������� � �����������."
	desc_opened = "����&#255;��� ����� ���������."
	icon_state = "GAL1"
	icon_state_opened = "GAL2"
	list_reagents = list("nutriment" = 10, "omnizine" = 0.1)
	trash = /obj/item/trash/konserva/galets

/obj/item/trash/konserva/galets
	name = "trash"
	icon_state = "GAL3"

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/kasha
	name = "Kasha"
	desc = "������&#255; ���&#255;��&#255; ���� � ��������� ��������."
	desc_opened = "����&#255;��� ��� ����, �� �� ����� ����� ������."
	icon_state = "Kasha1"
	icon_state_opened = "Kasha2"
	list_reagents = list("nutriment" = 15, "omnizine" = 0.2)
	trash = /obj/item/trash/konserva/kasha

/obj/item/trash/konserva/kasha
	name = "trash"
	icon_state = "Kasha3"

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva1
	name = "Konserva"
	desc = "���&#255; �� ��������, ����� ������������������� �&#255;��, �� ������ - �� ��������."
	desc_opened = "����&#255;��� �� �����, �� �� ������ ����� ������ �� �������."
	icon_state = "TushenkaRed1"
	icon_state_opened = "TushenkaRed2"
	list_reagents = list("nutriment" = 17, "omnizine" = 0.2)
	trash = /obj/item/trash/konserva/MREkonserva1

/obj/item/trash/konserva/MREkonserva1
	name = "trash"
	icon_state = "TushenkaRed3"

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva2
	name = "Konserva"
	desc = "���&#255; �� ��������, ����� ������������������� �&#255;�� c �������, �� ����� �&#255;�� � ����� ����� - �� ��������."
	desc_opened = "����&#255;��� �� �����, �� �� ������ ����� ������ �� ������� � ���-�� ���."
	icon_state = "TushenkaGreen1"
	icon_state_opened = "TushenkaGreen2"
	list_reagents = list("nutriment" = 17, "omnizine" = 0.2)
	trash = /obj/item/trash/konserva/MREkonserva2

/obj/item/trash/konserva/MREkonserva2
	name = "trash"
	icon_state = "TushenkaGreen3"

/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva3
	name = "Konserva"
	desc = "���&#255; �� ��������, ����� ������������������� �&#255;�� c �������, �� ����� �&#255;�� � ����&#255; ������ - �� ��������."
	desc_opened = "����&#255;��� �� �����, �� �� ������ ������ ������ ��������, ������������� ����� � ��������"
	icon_state = "TushenkaBlue1"
	icon_state_opened = "TushenkaBlue2"
	list_reagents = list("nutriment" = 17, "omnizine" = 0.2, "vitamin" = 10)
	trash = /obj/item/trash/konserva/MREkonserva3

/obj/item/trash/konserva/MREkonserva3
	name = "trash"
	icon_state = "TushenkaBlue3"

/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa
	name = "Kolbasa"
	desc = "����� �� ��������� ������� ��� ������� - ����� ���&#255;���� � ������� ���������&#255; - �������, ���� � ���� ��������."
	//weight = 0.4
	icon_state = "kolbasa"
	w_class = 2
	list_reagents = list("nutriment" = 11, "vitamin" = 1, "omnizine" = 0.3)

/obj/item/weapon/reagent_containers/food/snacks/stalker/baton
	name = "Baton"
	desc = "����������, ��� �����&#255;���&#255; ���� ������ �� ���������� ����, ������ ���� ���� �� ������� � ������ ��������. �� ��&#255;��� ������, ����� �� ��������� ���� �� ��������&#255;."
	//weight = 0.2
	icon_state = "baton_stalker"
	w_class = 2
	list_reagents = list("nutriment" = 8, "omnizine" = 0.2)

/obj/item/weapon/reagent_containers/food/snacks/stalker/shit //���, ��� ������� ��� - ��������� ������� � ����������
	name = "shit"
	desc = "���, ��� ������..."
	//weight = 1
	icon = 'icons/stalker/items.dmi'
	icon_state = "shit"
	w_class = 1
	list_reagents = list("nutriment" = 1, "toxin" = 2)

/obj/item/weapon/reagent_containers/food/snacks/meat/slab/radioactive
	name = "meat"
	desc = "A slab of mutant's meat. You are not sure, is it still radioactive or not."
	icon_state = "meat"
	dried_type = /obj/item/weapon/reagent_containers/food/snacks/sosjerky
	bitesize = 3
	list_reagents = list("nutriment" = 3)
	cooked_type = /obj/item/weapon/reagent_containers/food/snacks/meat/steak/plain
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/meat/rawcutlet/plain
	slices_num = 3
	filling_color = "#6B8E23"