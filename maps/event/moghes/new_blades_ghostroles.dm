//Civilians
/datum/ghostspawner/human/mudki_civ
	name = "Mudki Citizen"
	short_name = "civ"
	desc = "A resident of the once-proud city of Mudki, now decayed and scarred by battle."
	tags = list("External")
	extra_languages = list(LANGUAGE_UNATHI, LANGUAGE_AZAZIBA)
	max_count = 14
	spawnpoints = list("civ")
	possible_species = list(SPECIES_UNATHI)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY
	outfit = /obj/outfit/admin/unathi_village

	assigned_role = "Mudki Citizen"
	special_role = "Mudki Citizen"
	respawn_flag = null
	uses_species_whitelist = FALSE

/datum/ghostspawner/human/mudki_civ/post_spawn(mob/user)
	. = ..()
	renegades.add_antagonist(user.mind, do_not_equip = TRUE)

/datum/ghostspawner/human/mudki_civ/shopkeeper
	name = "Mudki Shopkeeper"
	short_name = "merchant"
	desc = "A shopkeeper, running one of the few remaining businesses in Mudki."
	max_count = 2
	spawnpoints = list("merchant")
	assigned_role = "Shopkeeper"
	special_role = "Shopkeeper"

/datum/ghostspawner/human/mudki_civ/priest
	name = "Mudki Sk'akh Priest"
	short_name = "priest"
	desc = "A priest at the district's Sk'akh temple, remaining through famine, ruin, and war."
	max_count = 1
	spawnpoints = list("priest")
	outfit = /obj/outfit/admin/moghes_skakh
	assigned_role = "Sk'akh Priest"
	special_role = "Sk'akh Priest"

/datum/ghostspawner/human/mudki_civ/doctor
	name = "Mudki Healer"
	short_name = "doc"
	desc = "A former employee of the local House of Medicine hospital, now left in a state of decay."
	max_count = 1
	spawnpoints = list("doc")
	outfit = /obj/outfit/admin/mudki_doc
	assigned_role = "Healer"
	special_role = "Healer"

/obj/outfit/admin/mudki_doc
	uniform = /obj/item/clothing/under/unathi
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	suit_accessory = /obj/item/clothing/accessory/poncho/unathimantle/med/brown
	shoes = /obj/item/clothing/shoes/sandals/caligae/socks
	gloves = /obj/item/clothing/gloves/latex/unathi
	belt = /obj/item/storage/belt/medical
	id = /obj/item/card/id
	back = /obj/item/storage/backpack/satchel/leather
	r_pocket = /obj/item/reagent_containers/food/drinks/waterbottle
	l_pocket = /obj/item/storage/wallet/random

/obj/outfit/admin/mudki_doc/get_id_access()
	return list(ACCESS_MEDICAL, ACCESS_PHARMACY)

//Soldiers
/datum/ghostspawner/human/mudki_hegemony
	name = "Hegemony Soldier"
	short_name = "hegemony"
	desc = "Part of the Izweski Hegemony's occupying force in Mudki. Ensure that peace and order is maintained."
	tags = list("External")
	max_count = 6
	extra_languages = list(LANGUAGE_UNATHI, LANGUAGE_AZAZIBA)
	spawnpoints = list("hegemony")
	possible_species = list(SPECIES_UNATHI, SPECIES_VAURCA_WARRIOR)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY
	outfit = /obj/outfit/admin/mudki_hegemony

	assigned_role = "Izweski Warrior"
	special_role = "Izweski Warrior"
	respawn_flag = null
	uses_species_whitelist = FALSE

/datum/ghostspawner/human/mudki_hegemony/post_spawn(mob/user)
	. = ..()
	renegades.add_antagonist(user.mind, do_not_equip = TRUE)

/obj/outfit/admin/mudki_hegemony
	uniform = /obj/item/clothing/under/unathi/izweski
	shoes = /obj/item/clothing/shoes/sandals/caligae/socks
	suit = /obj/item/clothing/suit/armor/unathi/hegemony
	head = /obj/item/clothing/head/helmet/unathi/hegemony
	gloves = /obj/item/clothing/gloves/black/unathi
	species_gloves = list(SPECIES_VAURCA_WARRIOR = null)
	species_head = list(
		SPECIES_VAURCA_WARRIOR = /obj/item/clothing/head/helmet/unathi/klax
	)
	species_suit = list(
		SPECIES_VAURCA_WARRIOR = /obj/item/clothing/suit/armor/unathi/klax
	)
	species_shoes = list(
		SPECIES_VAURCA_WARRIOR = /obj/item/clothing/shoes/vaurca
	)
	id = /obj/item/card/id
	suit_accessory = /obj/item/clothing/accessory/flagpatch/hegemony
	accessory = /obj/item/clothing/accessory/holster/hip
	accessory_contents = list(
		/obj/item/gun/energy/pistol/hegemony/selfcharge = 1
	)
	suit_store = /obj/item/gun/energy/rifle/hegemony/selfcharge
	belt = /obj/item/storage/belt/military
	belt_contents = list(
		/obj/item/handcuffs = 2,
		/obj/item/melee/baton/loaded = 1,
		/obj/item/melee/energy/sword/hegemony = 1,
		/obj/item/shield/energy/hegemony = 1
	)
	r_pocket = /obj/item/storage/wallet/random
	back = /obj/item/storage/backpack/satchel/hegemony
	backpack_contents = list(
		/obj/item/storage/firstaid/regular = 1,
		/obj/item/storage/box/donkpockets = 1
	)

/obj/outfit/admin/mudki_hegemony/get_id_access()
	return list(ACCESS_KATAPHRACT, ACCESS_KATAPHRACT_KNIGHT)

/obj/outfit/admin/mudki_hegemony/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(isvaurca(H))
		H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/vaurca/tactical(H), slot_wear_mask)
		H.equip_to_slot_or_del(new /obj/item/storage/backpack/cloak/klax(H), slot_back)
		var/obj/item/organ/internal/vaurca/preserve/preserve = H.internal_organs_by_name[BP_PHORON_RESERVE]
		H.internal = preserve
		H.internals.icon_state = "internal1"
		H.equip_or_collect(new /obj/item/reagent_containers/food/snacks/koisbar, slot_in_backpack)
		H.equip_or_collect(new /obj/item/reagent_containers/food/snacks/koisbar, slot_in_backpack)
		H.equip_or_collect(new /obj/item/reagent_containers/food/snacks/koisbar, slot_in_backpack)
		H.update_body()

/datum/ghostspawner/human/mudki_hegemony/commander
	name = "Izweski Commander"
	short_name = "commander"
	desc = "Commander of a squad from the Hegemony occupation force."
	max_count = 1
	spawnpoints = list("command")
	possible_species = list(SPECIES_UNATHI)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY
	outfit = /obj/outfit/admin/mudki_hegemony/officer

	assigned_role = "Izweski Commander"
	special_role = "Izweski Commander"

/obj/outfit/admin/mudki_hegemony/officer
	uniform = /obj/item/clothing/under/unathi/izweski/officer

//Federation
/datum/ghostspawner/human/nralakk
	name = "Nralakk Humanitarian Worker"
	short_name = "nralakk"
	desc = "Part of the Nralakk Federation humanitarian team in Mudki."
	tags = list("External")
	max_count = 6
	extra_languages = list(LANGUAGE_UNATHI, LANGUAGE_AZAZIBA)
	spawnpoints = list("nralakk")
	possible_species = list(SPECIES_SKRELL, SPECIES_SKRELL_AXIORI, SPECIES_VAURCA_WORKER, SPECIES_VAURCA_BULWARK, SPECIES_DIONA, SPECIES_DIONA_COEUS)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY
	outfit = /obj/outfit/admin/nralakk

	assigned_role = "Humanitarian Worker"
	special_role = "Humanitarian Worker"
	respawn_flag = null
	uses_species_whitelist = FALSE

/obj/outfit/admin/nralakk
	uniform = /obj/item/clothing/under/skrell/nralakk/ix/med
	shoes = /obj/item/clothing/shoes/jackboots/kala
	species_shoes = list(
		SPECIES_VAURCA_BULWARK = /obj/item/clothing/shoes/vaurca,
		SPECIES_VAURCA_WORKER = /obj/item/clothing/shoes/vaurca,
		SPECIES_DIONA = null,
		SPECIES_DIONA_COEUS = null
	)
	back = /obj/item/storage/backpack/kala
	id = /obj/item/card/id
	r_pocket = /obj/item/clothing/accessory/badge/passport/nralakk
	l_ear = /obj/item/device/radio/headset

/obj/outfit/admin/nralakk/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(isvaurca(H))
		H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/vaurca, slot_wear_mask)
		var/obj/item/organ/internal/vaurca/preserve/preserve = H.internal_organs_by_name[BP_PHORON_RESERVE]
		H.equip_or_collect(new /obj/item/reagent_containers/food/snacks/koisbar, slot_in_backpack)
		H.equip_or_collect(new /obj/item/reagent_containers/food/snacks/koisbar, slot_in_backpack)
		H.equip_or_collect(new /obj/item/reagent_containers/food/snacks/koisbar, slot_in_backpack)
		H.internal = preserve
		H.internals.icon_state = "internal1"
		H.update_body()
	if(H.is_diona())
		H.equip_or_collect(new /obj/item/device/uv_light(src), slot_in_backpack)

/obj/outfit/admin/nralakk/get_id_access()
	return list(ACCESS_SKRELL, ACCESS_MEDICAL)

/datum/ghostspawner/human/nralakk/leader
	name = "Nralakk Humanitarian Leader"
	short_name = "nralakk_lead"
	desc = "Lead the Federation humanitarian team."
	spawnpoints = list("nralakk_lead")
	max_count = 1
	outfit = /obj/outfit/admin/nralakk/leader
	possible_species = list(SPECIES_SKRELL, SPECIES_SKRELL_AXIORI)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY
	assigned_role = "Nralakk Humanitarian Leader"
	special_role = "Nralakk Humanitarian Leader"

/obj/outfit/admin/nralakk/leader
	uniform = /obj/item/clothing/under/skrell/nralakk/oqi/security
	accessory = /obj/item/clothing/accessory/holster/hip
	accessory_contents = list(/obj/item/gun/energy/fedpistol = 1)
