/datum/ghostspawner/human/bluenose
	short_name = "bluenose_crew"
	name = "Crewman"
	desc = "WIP"
	tags = list("External")
	spawnpoints = list("bluenose")
	welcome_message = "WIP"

	max_count = 4
	uses_species_whitelist = TRUE
	respawn_flag = null
	outfit = /datum/outfit/admin/bluenose_crew

	possible_species = list(SPECIES_HUMAN)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "Crewman"
	special_role = "Crewman"
	respawn_flag = null

/datum/outfit/admin/bluenose_crew
	name = "Crewman"

	uniform = /obj/item/clothing/under/tactical
	shoes = /obj/item/clothing/shoes/workboots/dark
	back = /obj/item/storage/backpack/satchel

	id = /obj/item/card/id

	l_ear = /obj/item/device/radio/headset/ship

	backpack_contents = list(/obj/item/storage/box/survival = 1)

/datum/outfit/admin/bluenose_crew/get_id_access()
	return list(access_external_airlocks, access_generic_away_site)

/datum/ghostspawner/human/bluenose/captain
	name = "Bluenose Captain"
	short_name = "bluenose_captain"
	desc = "WIP"
	spawnpoints = list("bluenose_captain")
	max_count = 1
	possible_species = list(SPECIES_HUMAN, SPECIES_HUMAN_OFFWORLD)
	welcome_message = "WIP"
