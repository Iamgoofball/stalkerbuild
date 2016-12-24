/obj/effect/spawner/lootdrop/stalker
	name = "stalker lootspawner"
	invisibility = 101
	lootcount = 2
	var/max_spawned = 3
	var/radius = 10 //Радиус разброса лута
	var/cooldown = 10000 //Кол-во минут * 1000 кд шитспавна
	var/list/spawned_loot = new()
	loot = list(/obj/item/stack/medical/bruise_pack/bint = 75,
				/obj/item/trash/can = 25)

/obj/effect/spawner/lootdrop/stalker/weapon
	lootcount = 1
	loot = list(/obj/item/weapon/gun/projectile/automatic/pistol/pm = 85,
				/obj/item/trash/can = 15)

/obj/effect/spawner/lootdrop/stalker/New()
	SpawnLoot(0)
	SpawnLoot()

/obj/effect/spawner/lootdrop/stalker/proc/SpawnLoot(enable_cooldown = 1)
	if(loot && loot.len)
		if(!enable_cooldown)
			for(var/k = 0, k < lootcount, k++)
				if(!loot.len) return
				var/lootspawn = pickweight(loot)
				if(lootspawn)
					var/turf/T = get_turf(src)
					var/obj/O = new lootspawn(T)
					spawned_loot.Add(O)
					RandomMove(O)
		else
			spawn(cooldown)
				for(var/k = 0, k < lootcount, k++)
					if(!loot.len) return
					var/lootspawn = pickweight(loot)
					if(lootspawn)
						var/turf/T = get_turf(src)
						var/obj/O = new lootspawn(T)
						spawned_loot.Add(O)
						RandomMove(O)
				SpawnLoot()

/obj/effect/spawner/lootdrop/stalker/proc/CanSpawn()
	var/count = 0
	var/i = 0
	var/list/ids = new()
	for(var/I in spawned_loot)
		var/obj/O = I
		if(O.loc == src.loc)
			count++
		else
			ids.Add(i)
		i++
	for(var/id in ids)
		spawned_loot.Cut(id, id)
	return max_spawned - count


/obj/effect/spawner/lootdrop/stalker/proc/RandomMove(spawned)
	if(spawned)
		var/turf/T = get_turf(src)
		if(istype(spawned, /obj))
			var/obj/O = spawned
			var/new_x = T.x + rand(-radius, radius)
			var/new_y = T.y + rand(-radius, radius)
			O.Move(locate(new_x, new_y, T.z))
		else
			if(istype(spawned, /mob))
				var/mob/M = spawned
				var/new_x = T.x + rand(-radius, radius)
				var/new_y = T.y + rand(-radius, radius)
				M.Move(locate(new_x, new_y, T.z))
	return spawned

/obj/effect/spawner/lootdrop/stalker/weapon/pistols
	name = "stalker pistols"
	loot = list(/obj/item/weapon/gun/projectile/automatic/pistol/pm = 35,
				/obj/item/weapon/gun/projectile/automatic/pistol/pb1s = 10,
				/obj/item/weapon/gun/projectile/automatic/pistol/fort12 = 15,
				/obj/nothing = 60)

/obj/effect/spawner/lootdrop/stalker/weapon/rifles_and_shotguns
	name = "stalker rifles_and_shotguns"
	loot = list(/obj/item/weapon/gun/projectile/revolver/bm16 = 25,
				/obj/item/weapon/gun/projectile/automatic/ak74 = 25,
				/obj/item/weapon/gun/projectile/automatic/aksu74 = 35,
				/obj/nothing = 60)

/obj/effect/spawner/lootdrop/stalker/weapon/smgs
	name = "stalker smgs"
	loot = list(/obj/item/weapon/gun/projectile/automatic/mp5 = 30,
				/obj/item/weapon/gun/projectile/automatic/aksu74 = 20,
				/obj/nothing = 60)

/obj/effect/spawner/lootdrop/stalker/medicine
	name = "stalker medicine"
	lootcount = 1
	loot = list(/obj/item/weapon/storage/firstaid/stalker = 30,
				/obj/item/weapon/storage/firstaid/army = 15,
				/obj/item/weapon/storage/firstaid/science = 5,
				/obj/nothing = 60)

/obj/effect/spawner/lootdrop/stalker/gravy
	name = "stalker gravity"
	radius = 3
	lootcount = 1
	cooldown = 3000
	loot = list(/obj/item/weapon/artefact/meduza = 12,
				/obj/item/weapon/artefact/stoneflower = 6,
				/obj/item/weapon/artefact/nightstar = 3,
				/obj/item/weapon/artefact/maminibusi = 1,
				/obj/nothing = 80)

/obj/effect/spawner/lootdrop/stalker/electra
	name = "stalker electra"
	radius = 3
	lootcount = 1
	cooldown = 3000
	loot = list(/obj/item/weapon/artefact/flash = 12,
				/obj/item/weapon/artefact/moonlight = 6,
				/obj/item/weapon/artefact/battery = 1,
				/obj/item/weapon/artefact/pustishka = 1,
				/obj/nothing = 80)
/obj/effect/spawner/lootdrop/stalker/fire
	name = "stalker fire"
	radius = 3
	lootcount = 1
	cooldown = 3000
	loot = list(/obj/item/weapon/artefact/droplet = 13,
				/obj/item/weapon/artefact/fireball = 6,
				/obj/item/weapon/artefact/crystal = 3,
				/obj/nothing = 80)

//Лутспавнер не принимает нулы, вместо этого используем объект, который удаляется после спауна
/obj/nothing
	name = "nothing"
	desc = "deletes after spawn"

obj/nothing/New()
	qdel(src)