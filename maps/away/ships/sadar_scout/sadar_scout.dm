/datum/map_template/ruin/away_site/sadar_scout
	name = "United Sadar Fleet Scout"
	description = "WIP Description"
	suffixes = list("ships/sadar_scout/sadar_scout.dmm")
	//sectors = list(ALL_COALITION_SECTORS)
	sectors = list(ALL_POSSIBLE_SECTORS)
	spawn_weight = 1
	ship_cost = 1
	id = "sadar_scout"
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/sadar_shuttle)
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED // REMOVE THIS FOR FINAL PRODUCT

/singleton/submap_archetype/sadar_scout
	map = "United Sadar Fleet Scout"
	descriptor = "WIP Description"

/obj/effect/overmap/visitable/ship/sadar_scout
	name = "United Sadar Fleet Scout"
	class = "ICV"
	desc = "WIP Description"
	icon_state = "freighter"
	moving_state = "freighter_moving"
	colors = list("#5b015b", "#8a0f8a")
	scanimage = "ranger.png"
	designer = "WIP Designer"
	volume = "WIP Volume"
	drive = "Low-Speed Warp Acceleration FTL Drive"
	weapons = "WIP Weapons"
	sizeclass = "WIP-class ship"
	shiptype = "WIP Shiptype"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 5000
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_SMALL
	initial_restricted_waypoints = list(
		"United Sadar Fleet Shuttle" = list("nav_hangar_sadar_scout")
	)

	initial_generic_waypoints = list(
		"nav_sadar_scout_1",
		"nav_sadar_scout_2",
		"nav_sadar_scout_3",
		"nav_sadar_scout_4",
		"nav_sadar_scout_dock_fore",
		"nav_sadar_scout_dock_fore_port",
		"nav_sadar_scout_dock_fore_starboard",
		"nav_sadar_scout_dock_aft_port",
		"nav_sadar_scout_dock_aft_starboard",
		"nav_sadar_scout_dock_port",
		"nav_sadar_scout_dock_starboard"
	)

	invisible_until_ghostrole_spawn = TRUE

/obj/effect/overmap/visitable/ship/sadar_scout/New()
	designation = "[pick("Released", "Sadar", "New Dawn")]"
	..()

/obj/effect/overmap/visitable/ship/sadar_scout/get_skybox_representation()
	var/image/skybox_image = image('icons/skybox/subcapital_ships.dmi', "ranger")
	skybox_image.pixel_x = rand(0,64)
	skybox_image.pixel_y = rand(128,256)
	return skybox_image


/obj/effect/shuttle_landmark/sadar_scout/nav1
	name = "Sadar Scout - Port Navpoint"
	landmark_tag = "nav_sadar_scout_1"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/sadar_scout/nav2
	name = "Sadar Scout - Fore Navpoint"
	landmark_tag = "nav_sadar_scout_2"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/sadar_scout/nav3
	name = "Sadar Scout - Starboard Navpoint"
	landmark_tag = "nav_sadar_scout_3"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/sadar_scout/nav4
	name = "Sadar Scout - Aft Navpoint"
	landmark_tag = "nav_sadar_scout_4"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/sadar_scout/dock/fore
	name = "Sadar Scout - Fore Dock"
	landmark_tag = "nav_sadar_scout_dock_fore"
	docking_controller = "airlock_sadar_scout_dock_fore"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/sadar_scout/dock/fore_port
	name = "Sadar Scout - Solar Dock Fore Port"
	landmark_tag = "nav_sadar_scout_dock_fore_port"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/sadar_scout/dock/fore_starboard
	name = "Sadar Scout - Solar Dock Fore Starboard"
	landmark_tag = "nav_sadar_scout_dock_fore_starboard"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/sadar_scout/dock/aft_port
	name = "Sadar Scout - Solar Dock Aft Port"
	landmark_tag = "nav_sadar_scout_dock_aft_port"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/sadar_scout/dock/aft_starboard
	name = "Sadar Scout - Solar Dock Aft Starboard"
	landmark_tag = "nav_sadar_scout_dock_aft_starboard"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/sadar_scout/dock/port
	name = "Sadar Scout - Solar Dock Port"
	landmark_tag = "nav_sadar_scout_dock_port"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/sadar_scout/dock/starboard
	name = "Sadar Scout - Solar Dock Starboard"
	landmark_tag = "nav_sadar_scout_dock_starboard"
	base_turf = /turf/space
	base_area = /area/space

//shuttle stuff
/obj/effect/overmap/visitable/ship/landable/sadar_shuttle
	name = "United Sadar Fleet Shuttle"
	class = "ICV"
	designation = "WIP NAME"
	desc = "WIP DESC"
	shuttle = "United Sadar Fleet Shuttle"
	icon_state = "shuttle"
	moving_state = "shuttle_moving"
	colors = list("#8a0f8a", "#5b015b")
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000 //very inefficient pod
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_TINY
	designer = "WIP DESIGNER"
	volume = "WIP VOLUME"
	sizeclass = "WIP-class ship"
	shiptype = "WIP SHIPTYPE"

/obj/machinery/computer/shuttle_control/explore/sadar_shuttle
	name = "shuttle control console"
	shuttle_tag = "United Sadar Fleet Shuttle"
	icon = 'icons/obj/machinery/modular_terminal.dmi'
	icon_state = "computer"
	icon_screen = "helm"
	icon_keyboard = "security_key"

/datum/shuttle/autodock/overmap/sadar_shuttle
	name = "United Sadar Fleet Shuttle"
	move_time = 20
	shuttle_area = list(/area/shuttle/sadar_shuttle)
	current_location = "nav_hangar_sadar_scout"
	dock_target = "airlock_sadar_shuttle"
	landmark_transition = "nav_transit_sadar_shuttle"
	range = 1
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_sadar_scout"
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/sadar_shuttle/hangar
	name = "USF Shuttle Dock"
	landmark_tag = "nav_hangar_sadar_scout"
	docking_controller = "sadar_shuttle_dock"
	base_area = /area/space
	base_turf = /turf/space
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/sadar_shuttle/transit
	name = "In transit"
	landmark_tag = "nav_transit_sadar_shuttle"
	base_turf = /turf/space/transit/north


// CUSTOM STUFF
// lights
/obj/machinery/light/floor/decayed
	brightness_color = "#fabd6d"
	randomize_color = FALSE
	brightness_power = 0.3

/obj/machinery/light/colored/decayed/dimmed
	brightness_power = 0.2

// red processing strata
/obj/item/stack/tile/circuit_red
    name = "circuit tile"
    singular_name = "circuit tile"
    desc = "An advanced tile covered in various circuitry and wiring."
    icon_state = "tile_rcircuit"
    force = 6.0
    matter = list(DEFAULT_WALL_MATERIAL = 468, MATERIAL_GLASS = 468)
    throwforce = 15.0
    throw_speed = 5
    throw_range = 20
    obj_flags = OBJ_FLAG_CONDUCTABLE

/singleton/flooring/reinforced/circuit/red
    name = "processing strata"
    icon_base = "rcircuit"
    build_type = /obj/item/stack/tile/circuit_red

/turf/simulated/floor/redgrid
	name = "mainframe floor"
	icon = 'icons/turf/flooring/circuit.dmi'
	icon_state = "rcircuit"
	initial_flooring = /singleton/flooring/reinforced/circuit/red
