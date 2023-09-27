/datum/map_template/ruin/away_site/ipc_refugee_ship
	name = "IPC Refugee Ship"
	description = "The Akers-class freighter is an ancient design, dating back nearly two hundred years. It was considered a reliable freighter for its time, but is completely obsolete by modern standards, making it a rare sight outside of ship graveyards. Scans indicate this vessel in particular to be exceptionally run down, bearing severe structural damage across the whole ship. Damage appears to be from a mix of both meteors and ballistic armaments. Despite this, power signatures seem to indicate the vessel is still somehow operable."
	suffixes = list("ships/ipc_refugee/ipc_refugee_ship.dmm")
	sectors = list(ALL_POSSIBLE_SECTORS) // CHANGE FOR FINAL PRODUCT
	spawn_weight = 1
	ship_cost = 1
	id = "ipc_refugee_ship"
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/ipc_refugee_shuttle)
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED // REMOVE FOR FINAL PRODUCT

/singleton/submap_archetype/ipc_refugee_ship
	map = "IPC Refugee Ship"
	descriptor = "The Akers-class freighter is an ancient design, dating back nearly two hundred years. It was considered a reliable freighter for its time, but is completely obsolete by modern standards, making it a rare sight outside of ship graveyards. Scans indicate this vessel in particular to be exceptionally run down, bearing severe structural damage across the whole ship. Damage appears to be from a mix of both meteors and ballistic armaments. Despite this, power signatures seem to indicate the vessel is still somehow operable."

/obj/effect/overmap/visitable/ship/ipc_refugee_ship
	name = "IPC Refugee Ship"
	class = "ICV"
	desc = "The Akers-class freighter is an ancient design, dating back nearly two hundred years. It was considered a reliable freighter for its time, but is completely obsolete by modern standards, making it a rare sight outside of ship graveyards. Scans indicate this vessel in particular to be exceptionally run down, bearing severe structural damage across the whole ship. Damage appears to be from a mix of both meteors and ballistic armaments. Despite this, power signatures seem to indicate the vessel is still somehow operable."
	icon_state = "tramp"
	moving_state = "tramp_moving"
	colors = list("#c3c7eb", "#a0a8ec")
	scanimage = "tramp_freighter.png"
	designer = "ERROR"
	volume = "52 meters length, 28 meters beam/width, 17 meters vertical height"
	drive = "Low-Speed Warp Acceleration FTL Drive"
	sizeclass = "Akers-class Freighter"
	shiptype = "Light Cargo Freighter"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 5000
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_SMALL
	initial_restricted_waypoints = list(
		"IPC Refugee Shuttle" = list("nav_hangar_ipc_refugee")
	)

	initial_generic_waypoints = list(
		"nav_ipc_refugee_ship_1",
		"nav_ipc_refugee_ship_2",
		"nav_ipc_refugee_ship_3",
		"nav_ipc_refugee_ship_4"
	)

	invisible_until_ghostrole_spawn = TRUE

/obj/effect/overmap/visitable/ship/ipc_refugee_ship/New()
	designation = "[pick("Help Us", "PLS NO MORE PIRATES", "give fuel i beg", "Spare Change", "Fix Me", "Need Directions, Starmap Broken", "KONYANG HERE WE COME", "we dont have shit i swear", "010100110100111101010011", "how's my flying", "ignore the bullet holes", "(insert designation)", "Press Any Key to Start", "Don't Tell Mom I'm In Burzsia")]" // ADD NAMES
	..()

/obj/effect/overmap/visitable/ship/ipc_refugee_ship/get_skybox_representation()
	var/image/skybox_image = image('icons/skybox/subcapital_ships.dmi', "tramp_freighter")
	skybox_image.pixel_x = rand(0,64)
	skybox_image.pixel_y = rand(128,256)
	return skybox_image

/obj/effect/shuttle_landmark/ipc_refugee_ship/nav1
	name = "IPC Refugee Ship - Port Side"
	landmark_tag = "nav_ipc_refugee_ship_1"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/ipc_refugee_ship/nav2
	name = "IPC Refugee Ship - Fore End"
	landmark_tag = "nav_ipc_refugee_ship_2"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/ipc_refugee_ship/nav3
	name = "IPC Refugee Ship - Starboard Side"
	landmark_tag = "nav_ipc_refugee_ship_3"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/ipc_refugee_ship/nav4
	name = "IPC Refugee Ship - Aft End"
	landmark_tag = "nav_ipc_refugee_ship_4"
	base_turf = /turf/space/dynamic
	base_area = /area/space

/obj/effect/shuttle_landmark/ipc_refugee_ship/transit
	name = "In transit"
	landmark_tag = "nav_transit_ipc_refugee_ship"
	base_turf = /turf/space/transit/north

/obj/effect/overmap/visitable/ship/landable/ipc_refugee_shuttle
	name = "IPC Refugee Shuttle"
	class = "ICV"
	designation = "Last Hope"
	desc = "The Stout-class is a small utility craft designed to latch to the cargo pods of the Akers-class freighter and pull them out to steer them into station dock, or vice versa. Like the freighter it belongs to, this cargo tug is an ancient design, dating back perhaps two hundred years. It's an inefficient, clunky, and obsolete design compared to modern equivalents, but it's still an operable craft."
	shuttle = "IPC Refugee Shuttle"
	icon_state = "pod"
	moving_state = "pod_moving"
	colors = list("#c3c7eb", "#a0a8ec")
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000 //very inefficient pod
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_TINY
	designer = "ERROR"
	volume = "10 meters length, 7 meters beam/width, 4 meters vertical height"
	sizeclass = "Stout-class Utility Craft"
	shiptype = "Cargo Tug"

/obj/machinery/computer/shuttle_control/explore/ipc_refugee_shuttle
	name = "shuttle control console"
	shuttle_tag = "IPC Refugee Shuttle"

/datum/shuttle/autodock/overmap/ipc_refugee_shuttle
	name = "IPC Refugee Shuttle"
	move_time = 40
	shuttle_area = list(/area/shuttle/ipc_refugee_shuttle)
	current_location = "nav_hangar_ipc_refugee"
	dock_target = "ipc_refugee_shuttle"
	landmark_transition = "nav_transit_ipc_refugee_shuttle"
	range = 1
	fuel_consumption = 4 // this thing is ancient, so not as efficient as other shuttles
	logging_home_tag = "nav_hangar_ipc_refugee"
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/ipc_refugee_shuttle/hangar
	name = "IPC Refugee Shuttle Hangar"
	landmark_tag = "nav_hangar_ipc_refugee"
	docking_controller = "ipc_refugee_ship_aft_airlock"
	base_area = /area/ship/ipc_refugee
	base_turf = /turf/space
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/ipc_refugee_shuttle/transit
	name = "In transit"
	landmark_tag = "nav_transit_ipc_refugee_shuttle"
	base_turf = /turf/space/transit/north

// custom stuff


/obj/structure/closet/crate/trashcart/shark
  name = "DO NOT OPEN!!!"
  desc = "A large, heavy, metal trashcart with wheels. This one looks particularly beat up, and seems to rattle on occassion...?"

/obj/structure/closet/crate/trashcart/shark/fill()
  new /mob/living/simple_animal/hostile/carp/shark(src)

/*
/obj/item/paper/ipc_refugee_ship/Initialize()
    . = ..()
	info = parsepencode(

	)
	icon_state = "paper_words"
*/

/obj/item/paper/ipc_refugee_ship/weapons
    name = "JIM SUCKS AT SALVAGE"
	// icon_state = "paper_words"
    info = {"I'm not great with guns i could swear one of these is a fucking pest gun, not a laser carbine. when i said we need to find real weapons, I MEANT SOMETHING THAT COULD KILL THE NEXT PIRATES THAT FUCK WITH US, ASSHOLE!!!
	PS. I accidentally fired the pistol and almost blinded myself, NORMAL BULLETS DON'T DO THAT, JIM! At least the shotgun has the real deal. Right? RIGHT, JIM?"}

/obj/item/paper/ipc_refugee_ship/reactor
    name = "NEW REACTOR INSTRUCTIONS"
	// icon_state = "paper_words"
    info = {"Okay, so as you know, those damn pirates blew a nice new hole in our ship, and blew all our fucking coolant out into the void along with it. So please please pleaaase with a cherry on top do not set it much higher than like, *two*, and DEFINITELY DO NOT SET IT TO FUCKING SIX OR HIGHER FOR THE LOVE OF ALL THAT IS GOOD

	If you leave this bad boy on six, you'll just blow a hole bigger than you've seen into the ship, knock out all hopes of anymore power and thrust, and worst of all, finish those asshole's job for them. **SO DON'T PUT IT TO SIX OR HIGHER!!!** Just take it nice and easy.

	Oh, also the tritiums just on the table over there. What's left, anyway.

	(there's a crude smiley face drawn at the bottom, accompanied by what seems to be a crossed out doodle of a ship exploding)"}

/obj/item/paper/ipc_refugee_ship/wishlist
    name = "SHOPPING LIST FOR SANTA OR SOMEBODY"
	// icon_state = "paper_words"
    info = {"- FUEL
	- MORE FUEL
	- AIR
	- A LOT OF AIR
	- I MEAN A LOOOOT OF AIR
	- FOOD
	- OVERLOADERS
	- HIGH CAPACITY POWER CELLS
	- BETTER SUIT COOLERS, PLEASE NO MISSING SCREWS ON THE PANELS
	- (incoherent scribbling)
	- FUCKING EVERYTHING
	respectfully, the crew :)"}

/obj/item/paper/ipc_refugee_ship/comms
    name = "COMMUNICATIONS"
	// icon_state = "paper_words"
    info = "So... yeah. Telecomms got hit. Just what the break we needed, right? All we got left are these dinky shortwaves, so just remember, 146.3 is the hailing frequency. Also remember, these shortwaves only pick up whatever frequency its set to. Keep track of that."

