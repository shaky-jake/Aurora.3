// kasf crewman

/datum/ghostspawner/human/kasf_crewman
	short_name = "kasf_crewman"
	name = "KASF Crewman"
	desc = "WIP DESC"
	tags = list("External")
	mob_name_prefix = "PO3. " // WIP

	spawnpoints = list("kasf_crewman")
	max_count = 5

	outfit = /datum/outfit/admin/kasf_crewman
	possible_species = list(SPECIES_HUMAN, SPECIES_HUMAN_OFFWORLD, SPECIES_IPC, SPECIES_IPC_SHELL, SPECIES_IPC_G1, SPECIES_IPC_G2, SPECIES_IPC_XION)
	uses_species_whitelist = FALSE // TRUE FOR FINAL PRODUCT
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "KASF Crewman"
	special_role = "KASF Crewman"
	respawn_flag = null


/datum/outfit/admin/kasf_crewman
	name = "KASF Crewman"
	// this is just the ranger outfit (for now)
	uniform = /obj/item/clothing/under/rank/konyang/space
	shoes = /obj/item/clothing/shoes/jackboots
	back = /obj/item/storage/backpack/satchel

	id = /obj/item/card/id/kasf_corvette

	l_ear = /obj/item/device/radio/headset/ship

	backpack_contents = list(/obj/item/storage/box/survival = 1)

/datum/outfit/admin/kasf_crewman/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(isoffworlder(H))
		H.equip_or_collect(new /obj/item/storage/pill_bottle/rmt, slot_in_backpack)

/datum/outfit/admin/kasf_crewman/get_id_access()
	return list(access_external_airlocks)

// kasf officer
/datum/ghostspawner/human/kasf_crewman/officer
	short_name = "kasf_crewman_officer"
	name = "KASF Officer"
	desc = "WIP DESC"
	mob_name_prefix = "LT. " // CHANGE?

	spawnpoints = list("kasf_crewman_officer")
	max_count = 1

	outfit = /datum/outfit/admin/kasf_crewman/officer
	possible_species = list(SPECIES_HUMAN, SPECIES_HUMAN_OFFWORLD)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "KASF Officer"
	special_role = "KASF Offcier"


/datum/outfit/admin/kasf_crewman/officer
	name = "KASF Officer"

	uniform = /obj/item/clothing/under/rank/konyang/space/officer
	head = /obj/item/clothing/head/konyang/space

/obj/item/card/id/kasf_corvette
	name = "kasf corvette id"
	access = list(access_external_airlocks)
