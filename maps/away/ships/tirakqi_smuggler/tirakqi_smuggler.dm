/datum/map_template/ruin/away_site/tirakqi_smuggler
	name = "Ti'Rakqi Smuggler"
	description = "WIP Desc"
	suffixes = list("ships/tirakqi_smuggler/tirakqi_smuggler.dmm")
	// sectors = list(SECTOR_TAU_CETI, SECTOR_ROMANOVICH, SECTOR_CORP_ZONE, SECTOR_VALLEY_HALE, SECTOR_BADLANDS)
	sectors = list(ALL_POSSIBLE_SECTORS)
	spawn_weight = 1
	ship_cost = 1
	id = "tirakqi_smuggler"
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/tirakqi_smuggler_shuttle)
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED
	unit_test_groups = list(3)

/singleton/submap_archetype/tirakqi_smuggler
	map = "Ti'Rakqi Smuggler"
	descriptor = "WIP Desc"

//ship stuff

/obj/effect/overmap/visitable/ship/tirakqi_smuggler
	name = "Ti'Rakqi Smuggler"
	desc = "WIP Desc"
	icon_state = "tirakqi"
	moving_state = "tirakqi_moving"
	colors = list("#27e4ee", "#4febbf")
	scanimage = "skrell_freighter.png"
	designer = "Nralakk Federation"
	volume = "WIP Volume"
	drive = "Low-Speed Warp Acceleration FTL Drive"
	weapons = "No visible armament, starboard obscured flight craft bay"
	sizeclass = "Unidentified-type Retrofitted Federation Freighter"
	class = "ISV"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 5000
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL
	initial_restricted_waypoints = list(
		"Ti'Rakqi Shuttle" = list("nav_hangar_tirakqi_shuttle")
	)

	initial_generic_waypoints = list(
		"nav_tirakqi_smuggler_1",
		"nav_tirakqi_smuggler_2",
		"nav_tirakqi_smuggler_3",
		"nav_tirakqi_smuggler_4",
		"nav_tirakqi_smuggler_dock_starboard",
		"nav_tirakqi_smuggler_dock_port"
	)

	invisible_until_ghostrole_spawn = TRUE

/obj/effect/overmap/visitable/ship/tirakqi_smuggler/New()
	designation = "[pick("Bigger Squib", "Frightful Whaler", "Star Spanner", "Lu'Kaax", "Star Scamp", "Ocean Ink", "Yippi")]"
	..()

/obj/effect/overmap/visitable/ship/tirakqi_smuggler/get_skybox_representation()
	var/image/skybox_image = image('icons/skybox/subcapital_ships.dmi', "skrell_freighter")
	skybox_image.pixel_x = rand(0,64)
	skybox_image.pixel_y = rand(128,256)
	return skybox_image

/obj/effect/shuttle_landmark/tirakqi_smuggler/nav1
	name = "Starboard Navpoint"
	landmark_tag = "nav_tirakqi_smuggler_1"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/tirakqi_smuggler/nav2
	name = "Port Navpoint"
	landmark_tag = "nav_tirakqi_smuggler_2"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/tirakqi_smuggler/nav3
	name = "Fore Navpoint"
	landmark_tag = "nav_tirakqi_smuggler_3"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/tirakqi_smuggler/nav4
	name = "Aft Navpoint"
	landmark_tag = "nav_tirakqi_smuggler_4"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/tirakqi_smuggler/dock/starboard
	name = "Starboard Docking Port"
	landmark_tag = "nav_tirakqi_smuggler_dock_starboard"
	docking_controller = "airlock_tirakqi_smuggler_dock_starboard"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/tirakqi_smuggler/dock/port
	name = "Port Docking Port"
	landmark_tag = "nav_tirakqi_smuggler_dock_port"
	docking_controller = "airlock_tirakqi_smuggler_dock_port"
	base_turf = /turf/space
	base_area = /area/space

//shuttle stuff
/obj/effect/overmap/visitable/ship/landable/tirakqi_smuggler_shuttle
	name = "Ti'Rakqi Shuttle"
	class = "ISV"
	designation = "Ku'ku"
	desc = "WIP Desc"
	shuttle = "Ti'Rakqi Shuttle"
	icon_state = "shuttle"
	moving_state = "shuttle_moving"
	colors = list("#27e4ee", "#4febbf")
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_TINY

/obj/machinery/computer/shuttle_control/explore/tirakqi_smuggler_shuttle
	name = "shuttle control console"
	shuttle_tag = "Ti'Rakqi Shuttle"
	req_access = list(access_skrell)

/datum/shuttle/autodock/overmap/tirakqi_smuggler_shuttle
	name = "Ti'Rakqi Shuttle"
	move_time = 20
	shuttle_area = list(/area/shuttle/tirakqi_smuggler_shuttle)
	current_location = "nav_hangar_tirakqi_shuttle"
	dock_target = "airlock_tirakqi_shuttle"
	landmark_transition = "nav_transit_tirakqi_smuggler_shuttle"
	range = 1
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_tirakqi_shuttle"
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/tirakqi_smuggler_shuttle/hangar
	name = "Ti'Rakqi Shuttle Hangar"
	landmark_tag = "nav_hangar_tirakqi_shuttle"
	docking_controller = "airlock_tirakqi_smuggler_shuttle_dock"
	base_area = /area/space
	base_turf = /turf/space
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/tirakqi_smuggler_shuttle/transit
	name = "In transit"
	landmark_tag = "nav_transit_tirakqi_smuggler_shuttle"
	base_turf = /turf/space/transit/north

// custom stuff
/obj/machinery/door/airlock/hatch/tirakqi
	door_color = "#704470"
	stripe_color = "#382972"

/obj/machinery/door/airlock/glass/tirakqi
	door_color = "#704470"
	stripe_color = "#382972"

/turf/simulated/wall/shuttle/space_ship/tirakqi_shuttle/cockpit
	color = "#6e2c6e"

/turf/simulated/wall/shuttle/space_ship/tirakqi_shuttle/main
	color = "#4e4378"

/turf/simulated/wall/shuttle/space_ship/tirakqi_shuttle/main/fake
	can_open = TRUE
	color = "#5e4e9c"
