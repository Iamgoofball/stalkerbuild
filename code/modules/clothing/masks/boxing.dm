/obj/item/clothing/mask/balaclava
	name = "balaclava"
	desc = "LOADSAMONEY"
	icon_state = "balaclava"
	item_state = "balaclava"
	flags = BLOCKHAIR
	flags_inv = HIDEFACE
	visor_flags_inv = HIDEFACE
	w_class = 2
	action_button_name = "Adjust Balaclava"
	ignore_maskadjust = 0

/obj/item/clothing/mask/balaclava/attack_self(mob/user)
	adjustmask(user)

/obj/item/clothing/mask/luchador
	name = "Luchador Mask"
	desc = "Worn by robust fighters, flying high to defeat their foes!"
	icon_state = "luchag"
	item_state = "luchag"
	flags = BLOCKHAIR
	flags_inv = HIDEFACE
	w_class = 2

/obj/item/clothing/mask/luchador/speechModification(message)
	if(copytext(message, 1, 2) != "*")
		message = replace_text(message, "captain", "CAPITÁN")
		message = replace_text(message, "station", "ESTACIÓN")
		message = replace_text(message, "sir", "SEÑOR")
		message = replace_text(message, "the ", "el ")
		message = replace_text(message, "my ", "mi ")
		message = replace_text(message, "is ", "es ")
		message = replace_text(message, "it's", "es")
		message = replace_text(message, "friend", "amigo")
		message = replace_text(message, "buddy", "amigo")
		message = replace_text(message, "hello", "hola")
		message = replace_text(message, " hot", " caliente")
		message = replace_text(message, " very ", " muy ")
		message = replace_text(message, "sword", "espada")
		message = replace_text(message, "library", "biblioteca")
		message = replace_text(message, "traitor", "traidor")
		message = replace_text(message, "wizard", "mago")
		message = uppertext(message)	//Things end up looking better this way (no mixed cases), and it fits the macho wrestler image.
		if(prob(25))
			message += " OLE!"
	return message

/obj/item/clothing/mask/luchador/tecnicos
	name = "Tecnicos Mask"
	desc = "Worn by robust fighters who uphold justice and fight honorably."
	icon_state = "luchador"
	item_state = "luchador"

/obj/item/clothing/mask/luchador/rudos
	name = "Rudos Mask"
	desc = "Worn by robust fighters who are willing to do anything to win."
	icon_state = "luchar"
	item_state = "luchar"