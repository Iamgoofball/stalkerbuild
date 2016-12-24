/obj/machinery/door/airlock/stalker
	icon = 'icons/obj/doors/door_sidor.dmi'
	overlays_file = 'icons/obj/doors/door_sidor.dmi'

/obj/machinery/door/airlock/stalker/New()
	..()

/obj/machinery/door/airlock/do_animate(animation)
	switch(animation)
//		if("opening")
//			update_icon(AIRLOCK_OPENING)
//		if("closing")
//			update_icon(AIRLOCK_CLOSING)
		if("deny")
			update_icon(AIRLOCK_DENY)
			sleep(6)
			update_icon(AIRLOCK_CLOSED)
			icon_state = "closed"

/obj/machinery/door/airlock/stalker/sidor
	name = "door"
	icon_state = "closed"

/obj/machinery/door/poddoor/sidor
	name = "door"
	desc = "A heavy duty blast door that opens mechanically."
	icon = 'icons/obj/doors/door_sidor.dmi'
	icon_state = "closed"
	id = 666
	auto_close = 0 // Time in seconds to automatically close when opened, 0 if it doesn't.