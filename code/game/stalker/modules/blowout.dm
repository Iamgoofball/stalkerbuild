#define BLOWOUTLOW		1
#define BLOWOUTNORMAL	2
#define BLOWOUTHIGH		3

var/datum/subsystem/blowout/StalkerBlowout

datum/subsystem/blowout
	var/blowoutphase = 1
	var/couldownmin = 6000
	var/couldownmax = 12000
	var/list/ambient = list('sound/stalker/blowout/blowout_amb_01.ogg', 'sound/stalker/blowout/blowout_amb_02.ogg',
						'sound/stalker/blowout/blowout_amb_03.ogg', 'sound/stalker/blowout/blowout_amb_04.ogg',
						'sound/stalker/blowout/blowout_amb_05.ogg', 'sound/stalker/blowout/blowout_amb_06.ogg',
						'sound/stalker/blowout/blowout_amb_07.ogg', 'sound/stalker/blowout/blowout_amb_08.ogg')

	var/list/rumble = list('sound/stalker/blowout/blowout_ambient_rumble_01.ogg', 'sound/stalker/blowout/blowout_ambient_rumble_02.ogg',
							'sound/stalker/blowout/blowout_ambient_rumble_03.ogg', 'sound/stalker/blowout/blowout_ambient_rumble_04.ogg')

	var/list/wave = list('sound/stalker/blowout/blowout_wave_01.ogg', 'sound/stalker/blowout/blowout_wave_02.ogg',
						'sound/stalker/blowout/blowout_wave_03.ogg')

	var/list/boom = list('sound/stalker/blowout/blowout_boom_01.ogg', 'sound/stalker/blowout/blowout_boom_02.ogg',
						'sound/stalker/blowout/blowout_boom_03.ogg')

	var/list/lightning = list('sound/stalker/blowout/blowout_lightning_01.ogg', 'sound/stalker/blowout/blowout_lightning_02.ogg',
								'sound/stalker/blowout/blowout_lightning_03.ogg', 'sound/stalker/blowout/blowout_lightning_04.ogg',
								'sound/stalker/blowout/blowout_lightning_05.ogg', 'sound/stalker/blowout/blowout_flare_01.ogg',
								'sound/stalker/blowout/blowout_flare_02.ogg', 'sound/stalker/blowout/blowout_flare_03.ogg',
								'sound/stalker/blowout/blowout_flare_04.ogg')

	var/list/wind = list('sound/stalker/blowout/blowout_wind_01.ogg', 'sound/stalker/blowout/blowout_wind_02.ogg',
							'sound/stalker/blowout/blowout_wind_03.ogg')

datum/subsystem/blowout/New()
	NEW_SS_GLOBAL(StalkerBlowout)
	Cycle()

datum/subsystem/blowout/proc/Cycle()
	spawn(rand(couldownmin, couldownmax))
		StartBlowout()
	blowoutphase++
	if(blowoutphase > 3)
		blowoutphase = 1

datum/subsystem/blowout/proc/StartBlowout()
	for(var/area/stalker/A in sortedAreas)
		if(istype(A, /area/stalker/blowout))
			A.StartBlowout()
	world << "Начинаетс&#255; выброс! Скорее найдите укрытие!"
	world << 'sound/stalker/pda/sms.ogg'
	world << 'sound/stalker/blowout/blowout_begin_02.ogg'
	world << 'sound/stalker/blowout/blowout_siren.ogg'
	spawn(581)
		world << 'sound/stalker/blowout/blowout_particle_wave.ogg'
	spawn(600)
		StopBlowout()

datum/subsystem/blowout/proc/StopBlowout()
	for(var/area/stalker/A in sortedAreas)
		if(istype(A, /area/stalker/blowout))
			A.StopBlowout(blowoutphase)
	world << 'sound/stalker/blowout/blowout_impact_02.ogg'
	world << 'sound/stalker/blowout/blowout_outro.ogg'
	spawn(300)
		world << "Выброс закончилс&#255;!"
		world << 'sound/stalker/pda/sms.ogg'
	Cycle()

area/proc/StartBlowout()
	blowout = 1
	ProcessBlowout()

area/proc/StopBlowout(blowoutphase)
	blowout = 0
	switch(blowoutphase)
		if(BLOWOUTLOW)
			for(var/mob/living/carbon/human/H in src.contents)
				H.radiation += 100
				H.apply_damage(150, BURN)
				H.stat = DEAD
		if(BLOWOUTNORMAL)
			for(var/mob/living/carbon/human/H in src.contents)
				H.radiation += 100
				H.apply_damage(300, BURN)
				H.stat = DEAD
		if(BLOWOUTHIGH)
			for(var/mob/living/carbon/human/H in src.contents)
				H.gib()

area/proc/ProcessBlowout()
	if(blowout)
		for(var/mob/living/carbon/human/H in src.contents)
			shake_camera(H, 1, 1)
			spawn(581)
			shake_camera(H, 10, 1)
		spawn(10)
			ProcessBlowout()
	if(prob(10))
		world << pick(StalkerBlowout.ambient)

	if(prob(20))
		world << pick(StalkerBlowout.wave)

	if(prob(10))
		world << pick(StalkerBlowout.wind)

	if(prob(20))
		world << pick(StalkerBlowout.rumble)

	if(prob(30))
		world << pick(StalkerBlowout.boom)

	if(prob(30))
		world << pick(StalkerBlowout.lightning)
