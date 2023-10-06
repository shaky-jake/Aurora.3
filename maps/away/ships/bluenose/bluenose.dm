/datum/map_template/ruin/away_site/bluenose
	name = "Bluenose"
	description = "WIP"
	suffixes = list("ships/bluenose/bluenose.dmm")
	// sectors = list(SECTOR_VALLEY_HALE, SECTOR_BADLANDS, SECTOR_NEW_ANKARA, SECTOR_AEMAQ)
	sectors = list(ALL_POSSIBLE_SECTORS) // CHANGE THIS FOR FINAL PRODUCT
	spawn_weight = 1
	ship_cost = 1
	id = "bluenose"
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/bluenose_shuttle)
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED // REMOVE THIS FOR FINAL PRODUCT

/singleton/submap_archetype/bluenose
	map = "Bluenose"
	descriptor = "WIP"

/obj/effect/overmap/visitable/ship/bluenose
	name = "Bluenose"
	class = "ICV"
	desc = "WIP"
	icon_state = "xansan"
	moving_state = "xansan_moving"
	colors = list("#8492fd", "#4d61fc")
	scanimage = "ranger.png"
	designer = "WIP INFO"
	volume = "WIP INFO"
	drive = "WIP"
	weapons = "WIP"
	sizeclass = "WIP INFO"
	shiptype = "Military patrol and combat utility"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 5000
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_SMALL
	initial_restricted_waypoints = list(
		"Bluenose Shuttle" = list("nav_hangar_bluenose")
	)

	initial_generic_waypoints = list(
		"nav_bluenose_1",
		"nav_bluenose_2",
		"nav_bluenose_3",
		"nav_bluenose_4"
	)

	invisible_until_ghostrole_spawn = TRUE

/obj/effect/overmap/visitable/ship/bluenose/New()
	designation = "[pick("Bluenose")]"
	..()

/obj/effect/overmap/visitable/ship/bluenose/get_skybox_representation()
	var/image/skybox_image = image('icons/skybox/subcapital_ships.dmi', "ranger")
	skybox_image.pixel_x = rand(0,64)
	skybox_image.pixel_y = rand(128,256)
	return skybox_image


/obj/effect/shuttle_landmark/bluenose/nav1
	name = "Port Navpoint"
	landmark_tag = "nav_bluenose_1"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/bluenose/nav2
	name = "Fore Navpoint"
	landmark_tag = "nav_bluenose_2"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/bluenose/nav3
	name = "Starboard Navpoint"
	landmark_tag = "nav_bluenose_3"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/bluenose/nav4
	name = "Aft Navpoint"
	landmark_tag = "nav_bluenose_4"
	base_turf = /turf/space/dynamic
	base_area = /area/space


/obj/effect/shuttle_landmark/bluenose/transit
	name = "In transit"
	landmark_tag = "nav_transit_bluenose"
	base_turf = /turf/space/transit/north

//shuttle stuff
/obj/effect/overmap/visitable/ship/landable/bluenose_shuttle
	name = "Bluejay Shuttle"
	class = "ICV"
	designation = "Bluejay"
	desc = "WIP"
	shuttle = "Bluejay Shuttle"
	icon_state = "shuttle"
	moving_state = "shuttle_moving"
	colors = list("#ffae17", "#ffcd70")
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000 //very inefficient pod
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_TINY
	designer = "WIP"
	volume = "WIP"
	sizeclass = "WIP"
	shiptype = "WIP"

/obj/machinery/computer/shuttle_control/explore/bluenose_shuttle
	name = "shuttle control console"
	shuttle_tag = "Bluejay Shuttle"

/datum/shuttle/autodock/overmap/bluenose_shuttle
	name = "Bluejay Shuttle"
	move_time = 20
	shuttle_area = list(/area/shuttle/bluenose_shuttle)
	current_location = "nav_hangar_bluenose"
	dock_target = "bluenose_shuttle"
	landmark_transition = "nav_transit_bluenose_shuttle"
	range = 1
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_bluenose"
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/bluenose_shuttle/hangar
	name = "Bluejay Shuttle Hangar"
	landmark_tag = "nav_hangar_bluenose"
	docking_controller = "bluenose_shuttle_dock"
	base_area = /area/ship/bluenose
	base_turf = /turf/simulated/floor/plating
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/bluenose_shuttle/transit
	name = "In transit"
	landmark_tag = "nav_transit_bluenose_shuttle"
	base_turf = /turf/space/transit/north
