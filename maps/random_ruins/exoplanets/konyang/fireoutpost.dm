/datum/map_template/ruin/exoplanet/konyang_fireoutpost
	name = "Konyang Firewatch Post"
	id = "konyang_fireoutpost"
	description = "A remote fireoutpost on Konyang."

	template_flags = TEMPLATE_FLAG_NO_RUINS|TEMPLATE_FLAG_RUIN_STARTS_DISALLOWED|TEMPLATE_FLAG_SPAWN_GUARANTEED
	sectors = list(SECTOR_HANEUNIM)
	suffixes = list("konyang/fireoutpost.dmm")

/area/konyang_fireoutpost
	name = "Konyang Firewatch Post"
	icon_state = "bluenew"
	requires_power = TRUE
	dynamic_lighting = TRUE
	no_light_control = FALSE
	base_turf = /turf/simulated/mineral
	area_flags = AREA_FLAG_HIDE_FROM_HOLOMAP

/datum/ghostspawner/human/konyang_fireman
	short_name = "konyang_fireman"
	name = "Konyang Firewatcher"
	desc = "Man a remote firewatch post."
	tags = list("External")
	welcome_message = "You are a firwatcher."

	spawnpoints = list("konyang_fireman")
	max_count = 2

	extra_languages = list(LANGUAGE_SOL_COMMON)
	outfit = /datum/outfit/admin/konyang_fireman
	possible_species = list(SPECIES_HUMAN, SPECIES_IPC, SPECIES_IPC_BISHOP, SPECIES_IPC_G1, SPECIES_IPC_G2, SPECIES_IPC_SHELL, SPECIES_IPC_XION, SPECIES_IPC_ZENGHU)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "Konyang Firewatcher"
	special_role = "Konyang Firewatcher"
	respawn_flag = null

	uses_species_whitelist = FALSE

	culture_restriction = list(/singleton/origin_item/culture/solarian)
	origin_restriction = list(/singleton/origin_item/origin/konyang)

/datum/outfit/admin/konyang_fireman
	name = "Konyang Firewatcher"

	uniform = /obj/item/clothing/under/color/lightbrown
	shoes = /obj/item/clothing/shoes/jackboots
	back = /obj/item/storage/backpack/satchel/leather
	l_ear = null
	id = null
	l_pocket = /obj/item/storage/wallet/random
	backpack_contents = list(/obj/item/storage/box/survival = 1)
