/datum/ghostspawner/human/sadar_crew
	short_name = "sadar_crew"
	name = "United Sadar Fleet Crewman"
	desc = "You are part of a small but tightly-knit crew onboard a scouting vessel of the United Sadar Fleet. Some may call you pirates, but truly your only goal is to keep you and your fleet of fellow outcasts supplied to survive no matter what it takes. The ends always justify the means, just don't be stupid. You've sworn to never abandon your brothers and sisters in need, and it just so happens the fleet needs all the supplies it can get right now."
	tags = list("External")

	spawnpoints = list("sadar_crew")
	max_count = 3

	mob_name_suffix = " Sadar"
	mob_name_pick_message = "Enter ONLY a first name."

	outfit = /datum/outfit/admin/sadar_crew
	possible_species = list(SPECIES_HUMAN_OFFWORLD)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "Independent Spacer"
	special_role = "United Sadar Fleet Crewman"
	respawn_flag = null

	culture_restriction = list(/singleton/origin_item/culture/coalition)
	origin_restriction = list(/singleton/origin_item/origin/coa_spacer)


/datum/outfit/admin/sadar_crew
	name = "United Sadar Fleet Crewman"

	uniform = /obj/item/clothing/under/syndicate/tacticool
	shoes = /obj/item/clothing/shoes/jackboots
	back = /obj/item/storage/backpack/satchel

	l_pocket = /obj/item/storage/wallet/random
	r_pocket = /obj/item/clothing/accessory/badge/passcard/scarab

	id = /obj/item/card/id/sadar_scout

	l_ear = /obj/item/device/radio/headset/ship

	accessory = /obj/item/clothing/accessory/offworlder/bracer/grey
	backpack_contents = list(
		/obj/item/storage/box/survival = 1,
		/obj/item/clothing/accessory/offworlder/dark_red = 1,
		/obj/item/clothing/accessory/offworlder/bracer/neckbrace/dark_red = 1
	)
/*
/datum/outfit/admin/sadar_crew/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(isoffworlder(H))
		H.equip_or_collect(new /obj/item/storage/pill_bottle/rmt, slot_in_backpack)
*/
/datum/outfit/admin/sadar_crew/get_id_access()
	return list(access_external_airlocks)

/datum/ghostspawner/human/sadar_crew/captain
	short_name = "sadar_crew_captain"
	name = "United Sadar Fleet Captain"
	desc = "You command a small but tightly-knit crew onboard a scouting vessel of the United Sadar Fleet. Some may call you pirates, but truly your only goal is to keep you and your fleet of fellow outcasts supplied to survive no matter what it takes. The ends always justify the means, just don't be stupid. You've sworn to never abandon your brothers and sisters in need, and it just so happens the fleet needs all the supplies it can get right now."

	spawnpoints = list("sadar_crew_captain")
	max_count = 1

	outfit = /datum/outfit/admin/sadar_crew/captain
	possible_species = list(SPECIES_HUMAN_OFFWORLD)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "Independent Captain"
	special_role = "United Sadar Fleet Captain"


/datum/outfit/admin/sadar_crew/captain
	name = "United Sadar Fleet Captain"

/obj/item/card/id/sadar_scout
	name = "united sadar fleet id"
	access = list(access_external_airlocks)
