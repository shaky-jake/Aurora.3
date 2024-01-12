/datum/map_template/ruin/away_site/light_cruiser
	name = "Light Cruiser"
	description = "WIP DESC"
	suffixes = list("ships/adminspawn/light_cruiser/light_cruiser.dmm")
	sectors = list(ALL_POSSIBLE_SECTORS)
	spawn_weight = 1
	ship_cost = 1
	id = "light_cruiser"
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/light_cruiser_transport, /datum/shuttle/autodock/overmap/light_cruiser_fighter)
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED
	unit_test_groups = list(3)

/singleton/submap_archetype/light_cruiser
	map = "Light Cruiser"
	descriptor = "WIP DESC"

/obj/effect/overmap/visitable/ship/light_cruiser
	name = "Light Cruiser"
	class = "MFV"
	// desc = "WIP DESC"
	icon_state = "light_cruiser"
	moving_state = "light_cruiser_moving"
	colors = list("#868aa6", "#787d9e")
	// designer = "WIP DESIGNER"
	volume = "112 meters length, 98 meters beam/width, 26 meters vertical height"
	drive = "Mid-Speed Warp Acceleration FTL Drive"
	weapons = "Dual extruding fore-mounted low-caliber rotary ballistic armament, aft-mounted large-caliber and medium-caliber ballistic armament, port and starboard obscured flight craft bays."
	sizeclass = "Antares-class Destroyer"
	// shiptype = "WIP COMBAT UTILITY"
	max_speed = 1/(2 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 25000 // very large ship
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_LARGE

	initial_restricted_waypoints = list(
		"Light Cruiser Transport" = list("nav_hangar_light_cruiser_transport"),
		"Light Cruiser Fighter" = list("nav_hangar_light_cruiser_fighter")
	)

	initial_generic_waypoints = list(
		"nav_light_cruiser_1",
		"nav_light_cruiser_2",
		"nav_light_cruiser_3",
		"nav_light_cruiser_4",
		"nav_light_cruiser_dock_aft",
		"nav_light_cruiser_dock_starboard",
		"nav_light_cruiser_dock_port",
		"nav_light_cruiser_dock_fore_starboard",
		"nav_light_cruiser_dock_fore_port",
		"nav_light_cruiser_external_dock_fore",
		"nav_light_cruiser_external_dock_aft_starboard",
		"nav_light_cruiser_external_dock_aft_port"
	)

	invisible_until_ghostrole_spawn = TRUE

/obj/effect/overmap/visitable/ship/light_cruiser/New()
	designation = "[pick("WIP", "W-I-P")]"
	..()

/obj/effect/overmap/visitable/ship/light_cruiser/get_skybox_representation()
	var/image/skybox_image = image('icons/skybox/subcapital_ships.dmi', "ranger")
	skybox_image.pixel_x = rand(0,64)
	skybox_image.pixel_y = rand(128,256)
	return skybox_image

// shuttle landmarks
/obj/effect/shuttle_landmark/light_cruiser/nav1
	name = "Fore Navpoint"
	landmark_tag = "nav_light_cruiser_1"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/light_cruiser/nav2
	name = "Aft Navpoint"
	landmark_tag = "nav_light_cruiser_2"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/light_cruiser/nav3
	name = "Port Aft Navpoint"
	landmark_tag = "nav_light_cruiser_3"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/light_cruiser/nav4
	name = "Starboard Aft Navpoint"
	landmark_tag = "nav_light_cruiser_4"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/light_cruiser/nav5
	name = "Port Fore Navpoint"
	landmark_tag = "nav_light_cruiser_5"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/light_cruiser/nav6
	name = "Starboard Fore Navpoint"
	landmark_tag = "nav_light_cruiser_6"
	base_turf = /turf/space/dynamic
	base_area = /area/space


// docking landmarks
/obj/effect/shuttle_landmark/light_cruiser/dock_aft
	name = "Aft Docking Port"
	landmark_tag = "nav_light_cruiser_dock_aft"
	docking_controller = "airlock_light_cruiser_dock_aft"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/light_cruiser/dock_starboard
	name = "Starboard Docking Port"
	landmark_tag = "nav_light_cruiser_dock_starboard"
	docking_controller = "airlock_light_cruiser_dock_starboard"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/light_cruiser/dock_port
	name = "Port Docking Port"
	landmark_tag = "nav_light_cruiser_dock_port"
	docking_controller = "airlock_light_cruiser_dock_port"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/light_cruiser/dock_fore_starboard
	name = "Fore Starboard Docking Port"
	landmark_tag = "nav_light_cruiser_dock_fore_starboard"
	docking_controller = "airlock_light_cruiser_dock_fore_starboard"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/light_cruiser/dock_fore_port
	name = "Fore Port Docking Port"
	landmark_tag = "nav_light_cruiser_dock_fore_port"
	docking_controller = "airlock_light_cruiser_dock_fore_port"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/light_cruiser/external_dock_fore
	name = "External Fore Docking Bay"
	landmark_tag = "nav_light_cruiser_external_dock_fore"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/light_cruiser/external_dock_aft_starboard
	name = "External Aft Starboard Docking Bay"
	landmark_tag = "nav_light_cruiser_external_dock_aft_starboard"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/light_cruiser/external_dock_aft_port
	name = "External Aft Port Docking Bay"
	landmark_tag = "nav_light_cruiser_external_dock_aft_port"
	base_turf = /turf/space
	base_area = /area/space



//shuttle - transport

/obj/effect/overmap/visitable/ship/landable/light_cruiser_transport
	name = "Light Cruiser Transport"
	class = "MFV"
	designation = "TRANSPORT-1"
	// desc = "WIP DESC"
	shuttle = "Light Cruiser Transport"
	icon_state = "intrepid"
	moving_state = "intrepid_moving"
	colors = list("#868aa6", "#787d9e")
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_TINY
	// designer = "WIP DESIGNER"
	volume = "16 meters length, 11 meters beam/width, 5 meters vertical height"
	sizeclass = "Vela-class Transport Craft"
	shiptype = "All-environment troop transport"

/obj/machinery/computer/shuttle_control/explore/terminal/light_cruiser_transport
	name = "shuttle control console"
	shuttle_tag = "Light Cruiser Transport"

/datum/shuttle/autodock/overmap/light_cruiser_transport
	name = "Light Cruiser Transport"
	move_time = 20
	shuttle_area = list(/area/shuttle/light_cruiser_transport)
	current_location = "nav_hangar_light_cruiser_transport"
	dock_target = "airlock_light_cruiser_transport"
	landmark_transition = "nav_transit_light_cruiser_transport"
	range = 1
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_light_cruiser_transport"
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/light_cruiser_transport/hangar
	name = "Light Cruiser Transport Hangar"
	landmark_tag = "nav_hangar_light_cruiser_transport"
	docking_controller = "light_cruiser_transport_dock"
	base_area = /area/ship/light_cruiser/hangar_port
	base_turf = /turf/simulated/floor/plating
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/light_cruiser_transport/transit
	name = "In transit"
	landmark_tag = "nav_transit_light_cruiser_transport"
	base_turf = /turf/space/transit/north


// shuttle - fighter

/obj/effect/overmap/visitable/ship/landable/light_cruiser_fighter
	name = "Light Cruiser Fighter"
	class = "MFV"
	designation = "FIGHTER-1"
	desc = "The Calvera-class Fighter is a dedicated combat craft, featuring dual rotary canons, extra armor to its fore and powerful thrusters."
	shuttle = "Light Cruiser Fighter"
	icon_state = "shuttle"
	moving_state = "shuttle_moving"
	colors = list("#868aa6", "#787d9e")
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_TINY
	// designer = "WIP DESIGNER"
	volume = "15 meters length, 8 meters beam/width, 4 meters vertical height"
	weapons = "Dual fore-mounted low-caliber rotary ballistic armament."
	sizeclass = "Calvera-class Multi-Crew Fighter Craft"
	shiptype = "High speed interception, strafing runs"

/obj/machinery/computer/shuttle_control/explore/terminal/light_cruiser_fighter
	name = "shuttle control console"
	shuttle_tag = "Light Cruiser Fighter"

/datum/shuttle/autodock/overmap/light_cruiser_fighter
	name = "Light Cruiser Fighter"
	move_time = 20
	shuttle_area = list(/area/shuttle/light_cruiser_fighter)
	current_location = "nav_hangar_light_cruiser_fighter"
	dock_target = "airlock_light_cruiser_fighter"
	landmark_transition = "nav_transit_light_cruiser_fighter"
	range = 1
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_light_cruiser_fighter"
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/light_cruiser_fighter/hangar
	name = "Light Cruiser Fighter Hangar"
	landmark_tag = "nav_hangar_light_cruiser_fighter"
	docking_controller = "light_cruiser_fighter_dock"
	base_area = /area/ship/light_cruiser/hangar_starboard
	base_turf = /turf/simulated/floor/plating
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/light_cruiser_fighter/transit
	name = "In transit"
	landmark_tag = "nav_transit_light_cruiser_fighter"
	base_turf = /turf/space/transit/north

// custom stuff

/obj/machinery/door/airlock/glass/destroyer
	door_color = "#475057"

/obj/item/device/gps/stationary/light_cruiser_fighter
	name = "static GPS (fighter)"
	desc = "A static global positioning system helpful for finding your way back to the light cruiser's fighter."
	icon_state = "gps-com"
	gps_prefix = "COM"
	compass_color = "#525b9e"
	gpstag = "FIGHTER-1"

/obj/item/device/gps/stationary/light_cruiser_transport
	name = "static GPS (transport)"
	desc = "A static global positioning system helpful for finding your way back to the light cruiser's transport."
	icon_state = "gps-com"
	gps_prefix = "COM"
	compass_color = "#5f6aba"
	gpstag = "TRANSPORT-1"
