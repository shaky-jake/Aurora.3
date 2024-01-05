/datum/map_template/ruin/away_site/combat_destroyer
	name = "Military Destroyer"
	description = "WIP DESC"
	suffixes = list("ships/adminspawn/combat_destroyer/combat_destroyer.dmm")
	sectors = list(ALL_POSSIBLE_SECTORS)
	spawn_weight = 1
	ship_cost = 1
	id = "combat_destroyer"
	// shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/kasf_shuttle)
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED
	unit_test_groups = list(3)

/singleton/submap_archetype/combat_destroyer
	map = "Military Destroyer"
	descriptor = "WIP DESC"

/obj/effect/overmap/visitable/ship/combat_destroyer
	name = "Military Destroyer"
	class = "MFV"
	desc = "WIP DESC"
	icon_state = "xansan"
	moving_state = "xansan_moving"
	colors = list("#8492fd", "#4d61fc")
	scanimage = "ranger.png"
	designer = "WIP DESIGNER"
	volume = "WIP VOLUME"
	drive = "Mid-Speed Warp Acceleration FTL Drive"
	weapons = "Dual extruding fore-mounted medium caliber ballistic armament, aft obscured flight craft bay"
	sizeclass = "WIP-CLASS DESTROYER"
	shiptype = "WIP COMBAT UTILITY"
	// Maybe increase speed and burn delay?
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	// very large ship
	vessel_mass = 20000
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_LARGE
	/*
	initial_restricted_waypoints = list(
		"KASF Shuttle" = list("nav_hangar_kasf")
	)
	*/
	initial_generic_waypoints = list(
		"nav_combat_destroyer_1",
		"nav_combat_destroyer_2",
		"nav_combat_destroyer_3",
		"nav_combat_destroyer_4",
		"nav_combat_destroyer_5",
		"nav_combat_destroyer_6",
		"nav_combat_destroyer_dock_starboard",
		"nav_combat_destroyer_dock_port"
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

/obj/effect/shuttle_landmark/combat_destroyer/nav5
	name = "Far Port Navpoint"
	landmark_tag = "nav_combat_destroyer_5"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/nav6
	name = "Far Starboard Navpoint"
	landmark_tag = "nav_combat_destroyer_6"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/transit
	name = "In transit"
	landmark_tag = "nav_transit_combat_destroyer"
	base_turf = /turf/space/transit/north

/obj/effect/shuttle_landmark/combat_destroyer/starboard_dock
	name = "Military Destroyer Starboard Dock"
	landmark_tag = "nav_combat_destroyer_dock_starboard"
	docking_controller = "airlock_combat_destroyer_dock_starboard"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/combat_destroyer/port_dock
	name = "Military Destroyer Port Dock"
	landmark_tag = "nav_combat_destroyer_dock_port"
	docking_controller = "airlock_combat_destroyer_dock_port"
	base_turf = /turf/space
	base_area = /area/space


//shuttle stuff
/*
/obj/effect/overmap/visitable/ship/landable/kasf_shuttle
	name = "KASF Shuttle"
	class = "KASFV"
	designation = "Kuoyu"
	desc = "Somewhat bulky by modern standards, the aging Stalwart-class transport is a vessel being phased out of service in Xanu fleets to make way for newer, more efficient transports. Though considered obsolete compared to its successor shuttles, this transport is still reliable enough that it's seen extensive use by Konyang's Aerospace Forces in recent years."
	shuttle = "KASF Shuttle"
	icon_state = "shuttle"
	moving_state = "shuttle_moving"
	colors = list("#8492fd", "#4d61fc")
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000 //very inefficient pod
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_TINY
	designer = "Coalition of Colonies, Xanu Prime"
	volume = "12 meters length, 7 meters beam/width, 4 meters vertical height"
	sizeclass = "Stalwart-class Transport Craft"
	shiptype = "All-environment troop transport"

/obj/machinery/computer/shuttle_control/explore/terminal/kasf_shuttle
	name = "shuttle control console"
	shuttle_tag = "KASF Shuttle"

/datum/shuttle/autodock/overmap/kasf_shuttle
	name = "KASF Shuttle"
	move_time = 20
	shuttle_area = list(/area/shuttle/kasf_shuttle)
	current_location = "nav_hangar_kasf"
	dock_target = "airlock_kasf_shuttle"
	landmark_transition = "nav_transit_kasf_shuttle"
	range = 1
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_kasf"
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/kasf_shuttle/hangar
	name = "KASF Shuttle Hangar"
	landmark_tag = "nav_hangar_kasf"
	docking_controller = "kasf_shuttle_dock"
	base_area = /area/ship/kasf_corvette/hangar
	base_turf = /turf/simulated/floor
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/kasf_shuttle/transit
	name = "In transit"
	landmark_tag = "nav_transit_kasf_shuttle"
	base_turf = /turf/space/transit/north

*/

// custom stuff
/obj/machinery/light/floor/blue
	brightness_color = "#6496FA"
	randomize_color = FALSE
