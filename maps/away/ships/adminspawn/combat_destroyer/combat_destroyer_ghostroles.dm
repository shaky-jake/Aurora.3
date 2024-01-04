/datum/ghostspawner/human/mil_crewman
	short_name = "mil_crewman"
	name = "Military Crewman"
	desc = "Crew the combat event ship"
	tags = list("External")
	mob_name_prefix = "PO3. "

	spawnpoints = list("mil_crewman")
	max_count = 6

	outfit = /datum/outfit/admin/mil_crewman
	possible_species = list(SPECIES_HUMAN, SPECIES_HUMAN_OFFWORLD, SPECIES_IPC, SPECIES_IPC_SHELL, SPECIES_IPC_G1, SPECIES_IPC_G2, SPECIES_IPC_XION, SPECIES_IPC_ZENGHU, SPECIES_IPC_BISHOP)
	uses_species_whitelist = TRUE
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "Military Crewman"
	special_role = "Military Crewman"
	respawn_flag = null


/datum/outfit/admin/mil_crewman
	name = "Military Crewman"
	uniform = /obj/item/clothing/under/syndicate/tacticool
	shoes = /obj/item/clothing/shoes/jackboots
	back = /obj/item/storage/backpack/satchel

	id = /obj/item/card/id/combat_destroyer

	l_ear = /obj/item/device/radio/headset/ship

	backpack_contents = list(/obj/item/storage/box/survival = 1)

/datum/outfit/admin/mil_crewman/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(isoffworlder(H))
		H.equip_or_collect(new /obj/item/storage/pill_bottle/rmt, slot_in_backpack)

/datum/outfit/admin/mil_crewman/get_id_access()
	return list(ACCESS_EXTERNAL_AIRLOCKS)


/datum/ghostspawner/human/mil_crewman/officer
	short_name = "mil_crewman_officer"
	name = "Military Captain"
	desc = "Command the combat event ship"
	mob_name_prefix = "CAPT. "

	spawnpoints = list("mil_crewman_officer")
	max_count = 1

	outfit = /datum/outfit/admin/mil_crewman/officer

	assigned_role = "Military Captain"
	special_role = "Military Captain"


/datum/outfit/admin/mil_crewman/officer
	name = "Military Captain"

	uniform = /obj/item/clothing/under/syndicate/tacticool

/obj/item/card/id/combat_destroyer
	name = "combat destroyer id"
	access = list(ACCESS_EXTERNAL_AIRLOCKS)
