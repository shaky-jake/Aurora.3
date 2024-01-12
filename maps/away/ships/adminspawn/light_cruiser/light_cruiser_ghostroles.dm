/datum/ghostspawner/human/light_cruiser_crewman
	short_name = "light_cruiser_crewman"
	name = "Light Cruiser Crewman"
	desc = "Crew the Light Cruiser. (ADMINSPAWNED SHIP FOR EVENT PURPOSES - DO NOT SPAWN WITHOUT ADMIN PERMISSION) "
	tags = list("External")

	spawnpoints = list("light_cruiser_crewman")
	max_count = 12

	outfit = /datum/outfit/admin/light_cruiser_crewman
	possible_species = list(SPECIES_HUMAN)
	uses_species_whitelist = TRUE
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "Light Cruiser Crewman"
	special_role = "Light Cruiser Crewman"
	respawn_flag = null


/datum/outfit/admin/light_cruiser_crewman
	name = "Light Cruiser Crewman"
	uniform = /obj/item/clothing/under/tactical
	shoes = /obj/item/clothing/shoes/jackboots
	back = /obj/item/storage/backpack/satchel
	gloves = /obj/item/clothing/gloves/swat/tactical

	id = /obj/item/card/id/light_cruiser

	l_ear = /obj/item/device/radio/headset/ship

	backpack_contents = list(/obj/item/storage/box/survival = 1)


/datum/outfit/admin/light_cruiser_crewman/get_id_access()
	return list(ACCESS_EXTERNAL_AIRLOCKS, ACCESS_LIGHT_CRUISER)


/datum/ghostspawner/human/light_cruiser_crewman/officer
	short_name = "light_cruiser_crewman_officer"
	name = "Light Cruiser Captain"
	desc = "Command the Light Cruiser. (ADMINSPAWNED SHIP FOR EVENT PURPOSES - DO NOT SPAWN WITHOUT ADMIN PERMISSION)"

	spawnpoints = list("light_cruiser_crewman_officer")
	max_count = 1

	outfit = /datum/outfit/admin/light_cruiser_crewman/officer

	assigned_role = "Light Cruiser Captain"
	special_role = "Light Cruiser Captain"


/datum/outfit/admin/light_cruiser_crewman/officer
	name = "Light Cruiser Captain"

	uniform = /obj/item/clothing/under/syndicate/tacticool
	accessory = /obj/item/clothing/accessory/holster/thigh
	gloves = /obj/item/clothing/gloves/fingerless

/obj/item/card/id/light_cruiser
	name = "light cruiser id"
	access = list(ACCESS_EXTERNAL_AIRLOCKS, ACCESS_LIGHT_CRUISER)
