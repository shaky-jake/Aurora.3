/area/new_blades
	name = "Zazalai Exteriors"
	icon_state = "green"
	requires_power = FALSE
	dynamic_lighting = TRUE
	no_light_control = FALSE
	base_turf = /turf/simulated/floor/exoplanet/desert
	ambience = AMBIENCE_DESERT
	area_blurb = "The heat of the desert is not as brutal here, but it is still a constant presence, even this high in the mountains."
	is_outside = OUTSIDE_YES
	var/lighting = TRUE

/area/new_blades/Initialize()
	. = ..()
	if(lighting)
		for(var/turf/T in src)
			T.set_light(4, 5, COLOR_WHITE)

/area/landing_pad
	name = "Landing Pad"
	icon_state = "blue"
	ambience = AMBIENCE_DESERT
	is_outside = OUTSIDE_YES

/area/new_blades/underground
	name = "Zazalai Caverns"
	icon_state = "bluenew"
	lighting = FALSE
	base_turf = /turf/simulated/floor/exoplanet/barren/warm
	ambience = AMBIENCE_RUINS
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_HIDE_FROM_HOLOMAP
	area_blurb = "The caverns are dark and quiet, the mountains closing around you."
	is_outside = OUTSIDE_NO

// EVENT FIVE AREAS (Mudki)
/area/new_blades/mudki
	name = "Mudki"
	icon_state = "blue"

/area/new_blades/mudki/road
	name = "Mudki Streets"
	icon_state = "green"
	holomap_color = HOLOMAP_PATH

/area/new_blades/mudki/interiors
	name = "Mudki Interiors"
	lighting = FALSE
	area_flags = AREA_FLAG_RAD_SHIELDED
	area_blurb = "This building is poorly maintained, but makes for a welcome shelter from the heat nonetheless."
	is_outside = OUTSIDE_NO

/area/new_blades/mudki/interiors/city_wall
	name = "Mudki City Wall"
	area_blurb = "The walls of Mudki were renowned for centuries as unbreakable. Now, they stand sundered and broken, dust falling from some damaged stone and concrete above your head."

/area/new_blades/mudki/interiors/alley
	name = "Mudki Alleys"
	icon_state = "green"
	area_blurb = "A small alleyway, winding its way through the urban sprawl. The smell of smoke and rot drifts on the air."

/area/new_blades/mudki/interiors/spaceport
	name = "Mudki Spaceport"
	area_blurb = "The spaceport is in surprisingly good condition, given the state of the wider city - though it seems to have gone unused for quite some time. Dust covers every available surface."

/area/new_blades/mudki/interiors/spaceport/checkpoint
	name = "Spaceport Checkpoint"
	holomap_color = HOLOMAP_AREACOLOR_SECURITY

/area/new_blades/mudki/interiors/spaceport/warehouse
	name = "Spaceport Warehouse"
	holomap_color = HOLOMAP_AREACOLOR_OPERATIONS

/area/new_blades/mudki/interiors/spaceport/shuttle_maintenance
	name = "Spaceport Shuttle Maintenance"
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/new_blades/mudki/interiors/spaceport/customs
	name = "Spaceport Administration"
	holomap_color = HOLOMAP_AREACOLOR_COMMAND

/area/new_blades/mudki/interiors/north_housing
	name = "Northern Mudki Housing"
	area_blurb = "A home, still standing despite the ruin brought to Mudki. Small, yet still comfortable in its way, despite everything."
	requires_power = TRUE
	holomap_color = HOLOMAP_AREACOLOR_CIVILIAN

/area/new_blades/mudki/interiors/south_housing
	name = "Southern Mudki Housing"
	area_blurb = "A home, still standing despite the ruin brought to Mudki. Small, yet still comfortable in its way, despite everything."
	holomap_color = HOLOMAP_AREACOLOR_CIVILIAN

/area/new_blades/mudki/interiors/custodial
	name = "Custodial Garage"
	area_blurb = "This place looks to have once been a storage facility for local street-cleaners. It seems well-supplied, though many of the cleaning products here seem to be well past their use-by date."
	holomap_color = HOLOMAP_AREACOLOR_CIVILIAN

/area/new_blades/mudki/interiors/military_base
	name = "Military Base"
	area_blurb = "Ruin has come to this building. Walls are torn apart from bombardment, glass and steel alike blasted to pieces. The smell of blood and smoke drifts on the mountain wind."
	holomap_color = HOLOMAP_AREACOLOR_SECURITY

/area/new_blades/mudki/interiors/restaurant
	name = "Restaurant"
	area_blurb = "This small restaurant seems to be in decent condition - though far from perfect condition. The floors and tables are dirty, yet the lights are still on, and the building seems to be sturdy. It seems this place was abandoned recently."
	// requires_power = TRUE
	holomap_color = HOLOMAP_AREACOLOR_CIVILIAN

/area/new_blades/mudki/interiors/hospital
	name = "Hospital"
	area_blurb = "Sterile and chemical scents in the air almost mask the faint coppery smell of blood. Harsh fluorescence blankets white floors."
	requires_power = TRUE
	holomap_color = HOLOMAP_AREACOLOR_MEDICAL

/area/new_blades/mudki/interiors/guildhouse
	name = "Merchant's Guildhouse"
	area_blurb = "The signs of violence here are obvious. Blood stains the ground, and the lingering scent of burning meat hangs around you."
	holomap_color = HOLOMAP_AREACOLOR_CIVILIAN

/area/new_blades/mudki/interiors/temple
	name = "Temple of Sk'akh"
	area_blurb = "Incense in the air. Clean floors and old sandstone walls. This place has not been scarred by the fighting that came to Mudki. Over the doors, a three-faced Unathi's visage is carved - the Three Faces of Sk'akh."
	holomap_color = HOLOMAP_AREACOLOR_CIVILIAN

/area/new_blades/mudki/interiors/inn
	name = "Inn"
	area_blurb = "This place should have the warmth of a fire, the smells of cooking meat, the sound of lively music. There is no fire. There is no meat. There is no music. Only decay."
	holomap_color = HOLOMAP_AREACOLOR_CIVILIAN

/area/new_blades/mudki/interiors/bar
	name = "Bar"
	area_blurb = "This building seems to be sturdy enough - whoever abandoned it did so recently. Whatever else this district may have lost over the years, at least they were still able to drink their way through it."
	holomap_color = HOLOMAP_AREACOLOR_CIVILIAN

/area/new_blades/mudki/interiors/library
	name = "Library"
	area_blurb = "Dust coats the floor here, the lights cracked and flickering. Mudki had many libraries, once - some funded by the Church, others funded by the former Lord himself. The place is old and crumbling, but the books remain. That, at least, is not yet lost."
	holomap_color = HOLOMAP_AREACOLOR_CIVILIAN

/area/new_blades/mudki/interiors/pawn
	name = "Pawn Shop"
	area_blurb = "A small shop, but one that has survived the ruin of its city. The shelves are lined with assorted miscellany."
	holomap_color = HOLOMAP_AREACOLOR_CIVILIAN

/area/new_blades/mudki/interiors/convenience
	name = "Convenience Store"
	area_blurb = "A mid-sized shop, shelves lined with food and other supplies. Perhaps crisis has forged an opportunity for profit."
	holomap_color = HOLOMAP_AREACOLOR_CIVILIAN

/area/new_blades/mudki/interiors/charging_station
	name = "Vehicle Charging Station"
	area_blurb = "A recharging station for electric vehicles. Though the stone around them is well-weathered, the charging stations themselves seem to still work."
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/new_blades/mudki/interiors/abandoned_shop
	name = "Abandoned Shop"
	area_blurb = "This place seems to be what remains of a small store, now left to decay."
	holomap_color = HOLOMAP_AREACOLOR_CIVILIAN

/area/new_blades/mudki/interiors/abandoned_shop/clothing
	name = "Abandoned Clothing Store"

/area/new_blades/mudki/interiors/abandoned_shop/electronic
	name = "Abandoned Electronics Store"

/area/new_blades/mudki/interiors/abandoned_shop/appliance
	name = "Abandoned Appliance Shop"

/area/new_blades/mudki/interiors/abandoned_shop/vehicle
	name = "Abandoned Mechanic's Shop"

/area/new_blades/mudki/interiors/abandoned_shop/convenience
	name = "Abandoned Convenience Store"

/area/new_blades/mudki/interiors/power_station
	name = "Power Station"
	area_blurb = "Power Station Placeholder"
	requires_power = TRUE
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/new_blades/mudki/interiors/water_treatment
	name = "Water Treatment Plant"
	area_blurb = "Once, this place would have brought clean water to thousands. Now it sits silent, water lapping at the motionless edges of great machines."
	requires_power = TRUE
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/new_blades/mudki/interiors/water_treatment/UV_room
	name = "Water Treatment Plant - Disinfection"
	area_blurb = "Ultraviolet lights have gone dark here. Terminals sit coated in dust. No one has been here in a long, long time."

/area/turbolift/mudki_hospital_lift
	name = "Mudki Hospital Lift"
	requires_power = TRUE
	station_area = FALSE

/area/turbolift/guildhouse_lift
	name = "Abandoned Guildhouse Lift"
	requires_power = TRUE
	station_area = FALSE

// Hospital Lift
/datum/shuttle/autodock/multi/lift/mudki_hospital
	name = "Mudki Hospital Lift"
	current_location = "nav_mudki_hospital_upper"
	shuttle_area = /area/turbolift/mudki_hospital_lift
	destination_tags = list(
		"nav_mudki_hospital_lower",
		"nav_mudki_hospital_upper",
		)

/obj/effect/shuttle_landmark/lift/mudki_hospital_upper
	name = "Mudki Hospital Lift - Upper"
	landmark_tag = "nav_mudki_hospital_upper"
	base_area = /area/new_blades/mudki/interiors/hospital
	base_turf = /turf/simulated/open

/obj/effect/shuttle_landmark/lift/mudki_hospital_lower
	name = "Mudki Hospital Lift - Lower"
	landmark_tag = "nav_mudki_hospital_lower"
	base_area = /area/new_blades/mudki/interiors/hospital
	base_turf = /turf/simulated/floor/plating

/obj/machinery/computer/shuttle_control/multi/lift/mudki_hospital
	shuttle_tag = "Mudki Hospital Lift"

/obj/machinery/computer/shuttle_control/multi/lift/wall/mudki_hospital
	shuttle_tag = "Mudki Hospital Lift"

// Abandoned Guildhouse Lift
/datum/shuttle/autodock/multi/lift/guildhouse
	name = "Abandoned Guildhouse Lift"
	current_location = "nav_guildhouse_upper"
	shuttle_area = /area/turbolift/guildhouse_lift
	destination_tags = list(
		"nav_guildhouse_lower",
		"nav_guildhouse_upper",
		)

/obj/effect/shuttle_landmark/lift/guildhouse_upper
	name = "Abandoned Guildhouse Lift - Upper"
	landmark_tag = "nav_guildhouse_upper"
	base_area = /area/new_blades/mudki/interiors/guildhouse
	base_turf = /turf/simulated/open

/obj/effect/shuttle_landmark/lift/guildhouse_lower
	name = "Abandoned Guildhouse Lift - Lower"
	landmark_tag = "nav_guildhouse_lower"
	base_area = /area/new_blades/mudki/interiors/guildhouse
	base_turf = /turf/simulated/floor/plating

/obj/machinery/computer/shuttle_control/multi/lift/guildhouse
	shuttle_tag = "Abandoned Guildhouse Lift"

/obj/machinery/computer/shuttle_control/multi/lift/wall/guildhouse
	shuttle_tag = "Abandoned Guildhouse Lift"

//Shuttles
/area/shuttle/scc_evac
	name = "SCC Transport Shuttle"
	area_flags = AREA_FLAG_RAD_SHIELDED
	holomap_color = HOLOMAP_AREACOLOR_COMMAND
	is_outside = OUTSIDE_NO

/datum/shuttle/autodock/ferry/scc_evac
	name = "SCCV Apollo"
	location = 1
	warmup_time = 10
	shuttle_area = /area/shuttle/scc_evac
	move_time = 20
	dock_target = "scc_evac"
	waypoint_station = "nav_scc_evac_dock"
	landmark_transition = "nav_scc_evac_interim"
	waypoint_offsite = "nav_scc_evac_start"
	knockdown = FALSE

/obj/effect/shuttle_landmark/scc_evac/start
	name = "Izilukh Landing Zone"
	landmark_tag = "nav_scc_evac_start"
	docking_controller = "scc_evac_station"
	base_turf = /turf/simulated/floor/exoplanet/desert
	base_area = /area/new_blades

/obj/effect/shuttle_landmark/scc_evac/interim
	name = "In transit"
	landmark_tag = "nav_scc_evac_interim"
	base_turf = /turf/space/transit/bluespace/west

/obj/effect/shuttle_landmark/scc_evac/dock
	name = "SCCV Horizon Docking Port"
	landmark_tag = "nav_scc_evac_dock"
	docking_controller = "scc_evac_shuttle_dock"
	landmark_flags = SLANDMARK_FLAG_AUTOSET

/obj/machinery/computer/shuttle_control/scc_evac
	name = "SCCV Apollo control console"
	req_access = list(ACCESS_HEADS)
	shuttle_tag = "SCCV Apollo"
	var/locked = FALSE

/obj/machinery/computer/shuttle_control/scc_evac/attack_hand(mob/user)
	if(locked)
		return
	..()

/datum/shuttle/autodock/ferry/supply/moghes
	name = "OX Supply Shuttle"
	location = 1
	shuttle_area = /area/supply/dock
	dock_target = "cargo_shuttle"
	waypoint_station = "nav_cargo_shuttle_dock"
	waypoint_offsite = "nav_cargo_shuttle_start"

/obj/effect/shuttle_landmark/supply/moghes/start
	name = "SCCV Horizon Cargo Dock"
	landmark_tag = "nav_cargo_shuttle_start"
	base_turf = /turf/unsimulated/floor/plating
	base_area = /area/centcom

/obj/effect/shuttle_landmark/supply/moghes/dock
	name = "Planetary Docking Site"
	landmark_tag = "nav_cargo_shuttle_dock"
	docking_controller = "cargo_shuttle_dock"
	base_turf = /turf/simulated/floor/asphalt
	base_area = /area/landing_pad


/obj/item/disk/mcguffin2
	name = "purifier operations data disk"
	icon = 'icons/obj/cloning.dmi'
	icon_state = "datadisk2"
	item_state = "card-id"
	w_class = ITEMSIZE_SMALL
	desc = "An encrypted data disk."
	desc_info = "This data disk can be used at the Zeng-Hu Environmental Analysis Terminal for a large one-time boost to survey progress."

/obj/machinery/computer/terminal/purifier
	name = "water purifier terminal"
	icon_screen = "turbinecomp"
	icon_keyboard = "id_key"
	var/has_disk = TRUE

/obj/machinery/computer/terminal/purifier/attack_hand(mob/user)
	. = ..()
	if(has_disk)
		var/choice = tgui_alert(user, "Latest data backup saved to external storage device. Select user action:", "Water Purifier Monitoring", list("Eject Disk", "Cancel"))
		if(choice == "Eject Disk")
			to_chat(user, SPAN_NOTICE("\The [src] ejects a disk."))
			has_disk = FALSE
			var/obj/item/disk/D = new /obj/item/disk/mcguffin2(get_turf(user))
			user.put_in_hands(D)

// custom mudki sewage thing
/turf/simulated/floor/exoplanet/water/shallow/partial_sewage
	name = "partially-filtered water"
	desc = "This water is somewhere between clean and sewage. Don't fall in it."
	icon_state = "unsmooth"
	base_icon_state = "unsmooth"
	icon = 'icons/turf/flooring/exoplanet/konyang/konyang_deep_water.dmi'
	smoothing_flags = SMOOTH_FALSE

// custom mudki water treatment thing

// RENAME AND REWRITE
/obj/item/paper/fluff/water_treatment_log
	name = "systems log"
	info = "Mudki Wastewater Treatment Plant 4 System Log:<br>\
	13/05/2458: Aeration tank oxygen line breaks detected. Initiating automatic pump shutoff.<br>\
	26/05/2458: Irregular flow rate detected in sewage lines. Advise personnel investigate.<br>\
	03/06/2458: Pressure buildup detected in sewage lines.<br>\
	05/06/2458: Multiple sewage line breaks detected. Initiating automatic sewage pump shutoff.<br>\
	19/06/2458: Treatment plant levels below operational. System shutdown engaged.<br>\
	20/07/2466: Treatment plant power reactivated. User command received: Print Logs."
	language = LANGUAGE_UNATHI

/obj/machinery/computer/terminal/water_treatment
	name = "system log terminal"
	icon_screen = "turbinecomp"
	icon_keyboard = "id_key"

/obj/machinery/computer/terminal/water_treatment/attack_hand(mob/user)
	. = ..()
	var/choice = tgui_alert(user, "System logs available. Display driver corrupted. Print system logs?", "System Logs", list("Print", "Cancel"))
	if(choice == "Print")
		var/obj/item/paper/P = new /obj/item/paper/fluff/water_treatment_log(get_turf(user))
		user.put_in_hands(P)

//Corpses
/obj/effect/landmark/corpse/villager
	name = "Unathi Villager"
	corpseuniform = /obj/item/clothing/under/unathi/himation
	corpseshoes = /obj/item/clothing/shoes/sandals/caligae
	corpseid = FALSE
	species = SPECIES_UNATHI

/obj/effect/landmark/corpse/villager/do_extra_customization(mob/living/carbon/human/M)
	. = ..()
	if(M.w_uniform)
		M.w_uniform.color = "#c3b6b6"
		M.w_uniform.accent_color = "#c3b6b6"
	M.apply_damage(rand(10,30), DAMAGE_RADIATION, damage_flags = DAMAGE_FLAG_DISPERSED)
	M.adjustBruteLoss(rand(100,300))
	M.faction = "deadguy"
	var/cadaver_color = pick("Brown", "Black", "Grey")
	switch(cadaver_color)
		if("Brown")
			M.change_skin_color(92,66,32)
		if("Black")
			M.change_skin_color(61,47,47)
		if("Grey")
			M.change_skin_color(98,84,65)
	M.change_hair_color(133, 115, 88)
	M.change_hair("Unathi Horns")
	M.change_facial_hair("Shaved")

/obj/effect/landmark/corpse/hegemony
	name = "Izweski Soldier"
	corpseuniform = /obj/item/clothing/under/unathi/izweski
	corpsesuit = /obj/item/clothing/suit/armor/unathi/hegemony
	corpsehelmet = /obj/item/clothing/head/helmet/unathi/hegemony
	corpseshoes = /obj/item/clothing/shoes/sandals/caligae
	corpseback = /obj/item/storage/backpack/satchel/hegemony
	corpseid = TRUE
	corpseidjob = "Izweski Warrior"
	species = SPECIES_UNATHI

/obj/effect/landmark/corpse/hegemony/do_extra_customization(mob/living/carbon/human/M)
	. = ..()
	M.gender = MALE
	M.adjustBruteLoss(rand(100,300))
	M.adjustFireLoss(rand(50,200))
	var/cadaver_color = pick("Green","Red","Brown")
	switch(cadaver_color)
		if("Green")
			M.change_skin_color(31,95,31)
		if("Red")
			M.change_skin_color(160,44,44)
		if("Brown")
			M.change_skin_color(98,84,65)
	M.change_hair_color(133, 115, 88)
	M.change_hair("Unathi Horns")
	M.change_facial_hair("Shaved")

/obj/effect/landmark/corpse/izaku
	name = "Izaku Warrior"
	corpseuniform = /obj/item/clothing/under/unathi/zazali/white
	corpsesuit = /obj/item/clothing/suit/armor/unathi
	corpsehelmet = /obj/item/clothing/head/helmet/unathi
	corpseshoes = /obj/item/clothing/shoes/sandals/caligae
	species = SPECIES_UNATHI

/obj/effect/landmark/corpse/izaku/do_extra_customization(mob/living/carbon/human/M)
	. = ..()
	M.gender = MALE
	M.adjustFireLoss(rand(100,400))
	M.adjustBruteLoss(rand(50,150))
	var/cadaver_color = pick("Brown", "Black", "Grey")
	switch(cadaver_color)
		if("Brown")
			M.change_skin_color(92,66,32)
		if("Black")
			M.change_skin_color(61,47,47)
		if("Grey")
			M.change_skin_color(98,84,65)
	M.change_hair_color(133, 115, 88)
	M.change_hair("Unathi Horns")
	M.change_facial_hair("Shaved")

/obj/effect/landmark/corpse/klax
	name = "K'lax Warrior"
	corpseuniform = /obj/item/clothing/under/unathi/izweski
	corpsesuit = /obj/item/clothing/suit/armor/unathi/klax
	corpsehelmet = /obj/item/clothing/head/helmet/unathi/klax
	corpseshoes = /obj/item/clothing/shoes/vaurca
	corpseback = /obj/item/storage/backpack/cloak/klax
	corpsemask = /obj/item/clothing/mask/gas/vaurca/tactical
	corpseid = TRUE
	corpseidjob = "Izweski Warrior"
	species = SPECIES_VAURCA_WARRIOR

/obj/effect/landmark/corpse/klax/do_extra_customization(mob/living/carbon/human/M)
	. = ..()
	M.adjustBruteLoss(rand(50,75))
	M.adjustFireLoss(rand(100,250))
	var/brood = pick("Vedhra","Zkaii","Tupii","Leto","Vetju")
	switch(brood)
		if("Vedhra")
			M.change_skin_color(130, 150, 20)
			M.change_hair_color(130, 150, 20)
		if("Zkaii")
			M.change_skin_color(11, 43, 27)
			M.change_hair_color(11, 43, 27)
		if("Tupii")
			M.change_skin_color(41, 150, 23)
			M.change_hair_color(41, 150, 23)
		if("Leto")
			M.change_skin_color(0, 80, 60)
			M.change_hair_color(0, 80, 60)
		if("Vetju")
			M.change_skin_color(11, 84, 31)
			M.change_hair_color(11, 84, 31)
	M.name = replacetext(M.name, "Ka'", "Za'")
	M.name = replacetext(M.name, "Ta'", "Za'")
	M.name = replacetext(M.name, "Ra'", "Za'")
	M.name = replacetext(M.name, "Viax","Akaix")
	M.name = replacetext(M.name, " Zo'ra", " K'lax")
	M.name = replacetext(M.name, " C'thur", " K'lax")
	M.real_name = M.name

/obj/effect/landmark/corpse/kataphract
	name = "Kataphract Warrior"
	corpseuniform = /obj/item/clothing/under/unathi/zazali/white
	corpseshoes = /obj/item/clothing/shoes/sandals/caligae
	corpseback = /obj/item/rig/unathi/fancy/equipped
	corpseid = TRUE
	corpseidjob = "Kataphract Warrior"
	species = SPECIES_UNATHI

/obj/effect/landmark/corpse/kataphract/do_extra_customization(mob/living/carbon/human/M)
	. = ..()
	M.gender = MALE
	M.adjustBruteLoss(rand(100,300))
	M.adjustFireLoss(rand(50,200))
	var/cadaver_color = pick("Green","Red","Brown")
	switch(cadaver_color)
		if("Green")
			M.change_skin_color(31,95,31)
		if("Red")
			M.change_skin_color(160,44,44)
		if("Brown")
			M.change_skin_color(98,84,65)
	M.change_hair_color(133, 115, 88)
	M.change_hair("Unathi Horns")
	M.change_facial_hair("Shaved")
	var/obj/item/rig/R = M.back
	R.toggle_seals(M,TRUE)
