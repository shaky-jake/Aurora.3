/datum/map_template/ruin/away_site/kasf_corvette
	name = "KASF Corvette"
	description = "WIP CORVETTE DESC"
	suffixes = list("ships/kasf_ship/kasf_ship.dmm")
	sectors = list(ALL_POSSIBLE_SECTORS) // CHANGE THIS FOR FINAL PRODUCT
	spawn_weight = 1
	ship_cost = 1
	id = "kasf_corvette"
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/kasf_shuttle)
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED // REMOVE THIS FOR FINAL PRODUCT

/singleton/submap_archetype/elyran_corvette
	map = "KASF Corvette"
	descriptor = "WIP CORVETTE DESC"

/obj/effect/overmap/visitable/ship/kasf_corvette
	name = "KASF Corvette"
	class = "FPBS" // CHANGE THIS
	desc = "WIP CORVETTE DESC"
	icon_state = "xansan"
	moving_state = "xansan_moving"
	colors = list("#8492fd", "#4d61fc")
	scanimage = "ranger.png"
	designer = "WIP INFO"
	volume = "WIP INFO"
	drive = "Low-Speed Warp Acceleration FTL Drive"
	weapons = "Dual extruding fore-mounted medium caliber ballistic armament, aft obscured flight craft bay"
	sizeclass = "Sai-class Corvette"
	shiptype = "Military patrol and combat utility"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 5000
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_SMALL
	initial_restricted_waypoints = list(
		"KASF Shuttle" = list("nav_hangar_kasf")
	)

	initial_generic_waypoints = list(
		"nav_kasf_corvette_1",
		"nav_kasf_corvette_2",
		"nav_kasf_corvette_3",
		"nav_kasf_corvette_4"
	)

	invisible_until_ghostrole_spawn = TRUE

/obj/effect/overmap/visitable/ship/kasf_corvette/New()
	designation = "[pick("Argia sa Mar", "Kuenoi", "Xansan", "Greentree", "Rautakaivos Kaupunki", "Dorshafen", "Inverkeithing", "Uusi Viipuri", "Horner Station", "Commander Ashia Patvardhan", "Sevaschaiv", "Rahe", "Czsari", "Suwon", "Kamoga", "Jagalaw", "Dalakyhr", "Gurmori", "Ohdker", "Dainshu", "Boch-Zivir", "Kill Emperor Boleslaw", "Expletive Sol", "Letter of Marque", "Free Fisanduh", "Gaucho", "Treaty of Xansan", "Pirates Beware", "Moroz Here We Come!", "This Ship Kills Privateers", "Lower The Black Flag", "Frontier Spirit", "Freedom", "Independence", "Self-Determination", "Let's Have A Second Collapse", "Send More Solarians", "You Can Run But You Can't Hide", "Frontier Alliance", "Here's To You, Governor Hawkins", "Remember Jamestown", "Good Riddance to Kambiz Entezam", "We're Coming For You In Hell, Terrence Hopper", "Warpway Safari Company", "Badlands Gun Club", "Light's Edge Light Foot", "Now Entering Free Xanu", "Weeping Stars, Weep No More", "Rebel's Reach Outreach Program", "Rugged Individualism", "Don't Tread On Me", "Snake In The Grass", "Konyang Yacht Club", "Ranger Ship")]"
	..() // GET A NEW LIST OF NAMES FOR THESE SHIPS

/obj/effect/overmap/visitable/ship/kasf_corvette/get_skybox_representation()
	var/image/skybox_image = image('icons/skybox/subcapital_ships.dmi', "ranger")
	skybox_image.pixel_x = rand(0,64)
	skybox_image.pixel_y = rand(128,256)
	return skybox_image

/obj/effect/shuttle_landmark/kasf_corvette/nav1
	name = "KASF Corvette - Port Side"
	landmark_tag = "nav_kasf_corvette_1"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/kasf_corvette/nav2
	name = "KASF Corvette - Fore End"
	landmark_tag = "nav_kasf_corvette_2"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/kasf_corvette/nav3
	name = "KASF Corvette - Starboard Side"
	landmark_tag = "nav_kasf_corvette_3"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/kasf_corvette/nav4
	name = "KASF Corvette - Aft End"
	landmark_tag = "nav_kasf_corvette_4"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/kasf_corvette/transit
	name = "In transit"
	landmark_tag = "nav_transit_kasf_corvette"
	base_turf = /turf/space/transit/north

//shuttle stuff
/obj/effect/overmap/visitable/ship/landable/kasf_shuttle
	name = "KASF Shuttle"
	class = "KASFV" // CHANGE THIS
	designation = "WIP DESGN"
	desc = "WIP SHUTTLE DESC"
	shuttle = "KASF Shuttle"
	icon_state = "pod"
	moving_state = "pod_moving"
	colors = list("#8492fd", "#4d61fc")
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000 //very inefficient pod
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_TINY
	designer = "WIP INFO"
	volume = "WIP INFO"
	sizeclass = "WIP INFO"
	shiptype = "WIP INFO"

/obj/machinery/computer/shuttle_control/explore/kasf_shuttle
	name = "shuttle control console"
	shuttle_tag = "KASF Shuttle"

/datum/shuttle/autodock/overmap/kasf_shuttle
	name = "KASF Shuttle"
	move_time = 20
	shuttle_area = list(/area/shuttle/kasf_shuttle)
	current_location = "nav_hangar_kasf"
	dock_target = "kasf_shuttle"
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
	base_turf = /turf/simulated/floor/plating
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/kasf_shuttle/transit
	name = "In transit"
	landmark_tag = "nav_transit_kasf_shuttle"
	base_turf = /turf/space/transit/north
