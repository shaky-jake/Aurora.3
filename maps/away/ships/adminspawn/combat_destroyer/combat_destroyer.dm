/datum/map_template/ruin/away_site/combat_destroyer
	name = "Light Cruiser"
	description = "WIP DESC"
	suffixes = list("ships/adminspawn/combat_destroyer/combat_destroyer.dmm")
	sectors = list(ALL_POSSIBLE_SECTORS)
	spawn_weight = 1
	ship_cost = 1
	id = "combat_destroyer"
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/combat_destroyer_transport, /datum/shuttle/autodock/overmap/combat_destroyer_fighter)
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED
	unit_test_groups = list(3)

/singleton/submap_archetype/combat_destroyer
	map = "Light Cruiser"
	descriptor = "WIP DESC"

/obj/effect/overmap/visitable/ship/combat_destroyer
	name = "Light Cruiser"
	class = "MFV"
	desc = "WIP DESC"
	icon_state = "light_cruiser"
	moving_state = "light_cruiser_moving"
	colors = list("#787d9e", "#868aa6")
	scanimage = "ranger.png"
	designer = "WIP DESIGNER"
	volume = "WIP VOLUME"
	drive = "Mid-Speed Warp Acceleration FTL Drive"
	weapons = "Dual extruding fore-mounted medium caliber ballistic armament, aft obscured flight craft bay"
	sizeclass = "WIP-CLASS DESTROYER"
	shiptype = "WIP COMBAT UTILITY"
	max_speed = 1/(2 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 25000 // very large ship, about a third of the horizon
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_LARGE

	initial_restricted_waypoints = list(
		"Light Cruiser Transport" = list("nav_hangar_combat_destroyer_transport"),
		"Light Cruiser Fighter" = list("nav_hangar_combat_destroyer_fighter")
	)

	initial_generic_waypoints = list(
		"nav_combat_destroyer_1",
		"nav_combat_destroyer_2",
		"nav_combat_destroyer_3",
		"nav_combat_destroyer_4",
		"nav_combat_destroyer_dock_aft",
		"nav_combat_destroyer_dock_starboard",
		"nav_combat_destroyer_dock_port",
		"nav_combat_destroyer_dock_fore_starboard",
		"nav_combat_destroyer_dock_fore_port",
		"nav_combat_destroyer_external_dock_fore",
		"nav_combat_destroyer_external_dock_aft_starboard",
		"nav_combat_destroyer_external_dock_aft_port"
	)

	invisible_until_ghostrole_spawn = TRUE

/obj/effect/overmap/visitable/ship/combat_destroyer/New()
	designation = "[pick("WIP", "W-I-P")]"
	..()

/obj/effect/overmap/visitable/ship/combat_destroyer/get_skybox_representation()
	var/image/skybox_image = image('icons/skybox/subcapital_ships.dmi', "ranger")
	skybox_image.pixel_x = rand(0,64)
	skybox_image.pixel_y = rand(128,256)
	return skybox_image

// shuttle landmarks
/obj/effect/shuttle_landmark/combat_destroyer/nav1
	name = "Port Navpoint"
	landmark_tag = "nav_combat_destroyer_1"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/nav2
	name = "Fore Navpoint"
	landmark_tag = "nav_combat_destroyer_2"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/nav3
	name = "Starboard Navpoint"
	landmark_tag = "nav_combat_destroyer_3"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/nav4
	name = "Aft Navpoint"
	landmark_tag = "nav_combat_destroyer_4"
	base_turf = /turf/space/dynamic
	base_area = /area/space


// docking landmarks
/obj/effect/shuttle_landmark/combat_destroyer/dock_aft
	name = "Aft Docking Port"
	landmark_tag = "nav_combat_destroyer_dock_aft"
	docking_controller = "airlock_combat_destroyer_dock_aft"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/dock_starboard
	name = "Starboard Docking Port"
	landmark_tag = "nav_combat_destroyer_dock_starboard"
	docking_controller = "airlock_combat_destroyer_dock_starboard"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/dock_port
	name = "Port Docking Port"
	landmark_tag = "nav_combat_destroyer_dock_port"
	docking_controller = "airlock_combat_destroyer_dock_port"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/dock_fore_starboard
	name = "Fore Starboard Docking Port"
	landmark_tag = "nav_combat_destroyer_dock_fore_starboard"
	docking_controller = "airlock_combat_destroyer_dock_fore_starboard"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/dock_fore_port
	name = "Fore Port Docking Port"
	landmark_tag = "nav_combat_destroyer_dock_fore_port"
	docking_controller = "airlock_combat_destroyer_dock_fore_port"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/external_dock_fore
	name = "External Fore Docking Bay"
	landmark_tag = "nav_combat_destroyer_external_dock_fore"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/external_dock_aft_starboard
	name = "External Aft Starboard Docking Bay"
	landmark_tag = "nav_combat_destroyer_external_dock_aft_starboard"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/external_dock_aft_port
	name = "External Aft Port Docking Bay"
	landmark_tag = "nav_combat_destroyer_external_dock_aft_port"
	base_turf = /turf/space
	base_area = /area/space



//shuttle - transport

/obj/effect/overmap/visitable/ship/landable/combat_destroyer_transport
	name = "Light Cruiser Transport"
	class = "MFV"
	designation = "TRANSPORT-1"
	desc = "WIP DESC"
	shuttle = "Light Cruiser Transport"
	icon_state = "intrepid"
	moving_state = "intrepid_moving"
	colors = list("#787d9e", "#868aa6")
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_TINY
	designer = "WIP DESIGNER"
	volume = "WIP VOLUME"
	sizeclass = "WIP Transport Craft"
	shiptype = "All-environment troop transport"

/obj/machinery/computer/shuttle_control/explore/terminal/combat_destroyer_transport
	name = "shuttle control console"
	shuttle_tag = "Light Cruiser Transport"

/datum/shuttle/autodock/overmap/combat_destroyer_transport
	name = "Light Cruiser Transport"
	move_time = 20
	shuttle_area = list(/area/shuttle/combat_destroyer_transport)
	current_location = "nav_hangar_combat_destroyer_transport"
	dock_target = "airlock_combat_destroyer_transport"
	landmark_transition = "nav_transit_combat_destroyer_transport"
	range = 1
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_combat_destroyer_transport"
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/combat_destroyer_transport/hangar
	name = "Light Cruiser Transport Hangar"
	landmark_tag = "nav_hangar_combat_destroyer_transport"
	docking_controller = "combat_destroyer_transport_dock"
	base_area = /area/ship/combat_destroyer/hangar_port
	base_turf = /turf/simulated/floor/plating
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/combat_destroyer_transport/transit
	name = "In transit"
	landmark_tag = "nav_transit_combat_destroyer_transport"
	base_turf = /turf/space/transit/north


// shuttle - fighter

/obj/effect/overmap/visitable/ship/landable/combat_destroyer_fighter
	name = "Light Cruiser Fighter"
	class = "MFV"
	designation = "FIGHTER-1"
	desc = "WIP DESC"
	shuttle = "Light Cruiser Fighter"
	icon_state = "shuttle"
	moving_state = "shuttle_moving"
	colors = list("#787d9e", "#868aa6")
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_TINY
	designer = "WIP DESIGNER"
	volume = "WIP VOLUME"
	sizeclass = "WIP Transport Craft"
	shiptype = "All-environment troop transport"

/obj/machinery/computer/shuttle_control/explore/terminal/combat_destroyer_fighter
	name = "shuttle control console"
	shuttle_tag = "Light Cruiser Fighter"

/datum/shuttle/autodock/overmap/combat_destroyer_fighter
	name = "Light Cruiser Fighter"
	move_time = 20
	shuttle_area = list(/area/shuttle/combat_destroyer_fighter)
	current_location = "nav_hangar_combat_destroyer_fighter"
	dock_target = "airlock_combat_destroyer_fighter"
	landmark_transition = "nav_transit_combat_destroyer_fighter"
	range = 1
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_combat_destroyer_fighter"
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/combat_destroyer_fighter/hangar
	name = "Light Cruiser Fighter Hangar"
	landmark_tag = "nav_hangar_combat_destroyer_fighter"
	docking_controller = "combat_destroyer_fighter_dock"
	base_area = /area/ship/combat_destroyer/hangar_starboard
	base_turf = /turf/simulated/floor/plating
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/combat_destroyer_fighter/transit
	name = "In transit"
	landmark_tag = "nav_transit_combat_destroyer_fighter"
	base_turf = /turf/space/transit/north

// custom stuff

/obj/machinery/door/airlock/glass/destroyer
	door_color = "#475057"

/obj/item/device/gps/stationary/combat_destroyer_fighter
	name = "static GPS (fighter)"
	desc = "A static global positioning system helpful for finding your way back to the light cruiser's fighter."
	icon_state = "gps-com"
	gps_prefix = "COM"
	compass_color = "#525b9e"
	gpstag = "FIGHTER-1"

/obj/item/device/gps/stationary/combat_destroyer_transport
	name = "static GPS (transport)"
	desc = "A static global positioning system helpful for finding your way back to the light cruiser's transport."
	icon_state = "gps-com"
	gps_prefix = "COM"
	compass_color = "#5f6aba"
	gpstag = "TRANSPORT-1"
