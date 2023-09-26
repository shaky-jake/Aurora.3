/datum/ghostspawner/human/refugee_crew
	short_name = "refugee_crew"
	name = "Human Refugee"
	desc = "You are either somebody dedicated to funneling runaway IPCs to safety, or a refugee yourself. (WIP)"
	tags = list("External")

	spawnpoints = list("refugee_crew")
	max_count = 2

	outfit = /datum/outfit/admin/refugee_crew
	possible_species = list(SPECIES_HUMAN, SPECIES_HUMAN_OFFWORLD)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "Freighter Crewman"
	special_role = "Human Refugee"
	respawn_flag = null

/datum/outfit/admin/refugee_crew
	name = "Human Refugee"

	uniform = /obj/item/clothing/under/tactical
	shoes = /obj/item/clothing/shoes/jackboots
	back = /obj/item/storage/backpack/satchel

	id = /obj/item/card/id/refugee_crew_ship

	//l_ear = /obj/item/device/radio/headset/ship

	backpack_contents = list(
		/obj/item/storage/box/survival = 1,
		/obj/item/device/radio/map_preset = 1,
		/obj/item/device/flashlight = 1,
		/obj/item/storage/wallet = 1,
		/obj/item/clothing/accessory/badge/passport/sol = 1,
		/obj/item/spacecash/c200 = 1,
		/obj/item/spacecash/c100 = 1
	)

/datum/outfit/admin/refugee_crew/get_id_access()
	return list(access_external_airlocks)

// IPC REFUGEE
/datum/ghostspawner/human/refugee_crew/ipc
	short_name = "refugee_crew_ipc"
	name = "IPC Refugee"
	desc = "You are an IPC refugee, fleeing from the Wildlands in search of a better life. The journey has been nothing but perilous at every turn, but you've come too far now to give up on the dream of freedom. Do what you must to survive, and maybe you'll reach Konyang yet."

	spawnpoints = list("refugee_crew_ipc")
	max_count = 3

	outfit = /datum/outfit/admin/refugee_crew/ipc
	possible_species = list(SPECIES_IPC, SPECIES_IPC_SHELL, SPECIES_IPC_G1, SPECIES_IPC_G2, SPECIES_IPC_XION, SPECIES_IPC_ZENGHU, SPECIES_IPC_BISHOP)
	uses_species_whitelist = FALSE // TRUE FOR FINAL PRODUCT
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "Passenger"
	special_role = "IPC Refugee"


/datum/outfit/admin/refugee_crew/ipc
	name = "IPC Refugee"

	backpack_contents = list(
		/obj/item/storage/box/survival = 1,
		/obj/item/device/radio/map_preset = 1,
		/obj/item/device/flashlight = 1,
		/obj/item/storage/wallet = 1
	)

/obj/item/card/id/refugee_crew_ship
	name = "refugee ship id"
	access = list(access_external_airlocks)
