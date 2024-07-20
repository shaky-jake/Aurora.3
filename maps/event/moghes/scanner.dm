//Item
/obj/item/device/scanner
	name = "biological analyzer"
	icon_state = "adv_spectrometer"
	item_state = "analyzer"
	desc = "A Zeng-Hu Pharmaceuticals proprietary biological scanner."
	desc_extended = "This is a new model of a Zeng-Hu classic, designed to analyze alien flora and fauna. Useful for providing data on the environmental conditions of an unexplored world."
	desc_info = "Simply click on a plant or animal to use this device. It will provide information on the biology and wellbeing of the life form, which can be used for wider assessment of ongoing conditions. Use it in-hand to print the most recent scan results. Certain turfs or other objects may also provide scan data. Data can be uploaded to the Zeng-Hu Analysis Terminal."
	origin_tech = list(TECH_BIO = 1)
	w_class = ITEMSIZE_SMALL
	obj_flags = OBJ_FLAG_CONDUCTABLE
	throwforce = 0
	throw_speed = 3
	throw_range = 7
	matter = list(MATERIAL_ALUMINIUM = 30, MATERIAL_GLASS = 20)
	var/last_data
	var/form_title
	var/list/valid_types = list(
		/mob/living/simple_animal,
		/obj/structure/flora/grass/desert,
		/obj/structure/flora/grass/junglegrass,
		/obj/structure/flora/tree/jungle,
		/turf/simulated/floor/exoplanet/water/shallow/moghes,
		/turf/simulated/floor/exoplanet/water/shallow/partial_sewage,
		/turf/simulated/floor/exoplanet/water/shallow/sewage,
		/turf/simulated/floor/exoplanet/grass/moghes,
		/turf/simulated/floor/exoplanet/grass/moghes/dirt
	)

/obj/item/device/scanner/proc/print_report_verb()
	set name = "Print Scan Report"
	set category = "Object"
	set src = usr

	if(usr.stat || usr.restrained() || usr.lying)
		return
	print_report(usr)

/obj/item/device/scanner/Topic(href, href_list)
	if(..())
		return
	if(href_list["print"])
		print_report(usr)

/obj/item/device/scanner/proc/print_report(var/mob/living/user)
	if(!last_data)
		to_chat(user, "There is no scan data to print.")
		return
	var/obj/item/paper/P = new /obj/item/paper(get_turf(src))
	P.set_content_unsafe("paper - [form_title]", "[last_data]")
	if(istype(user,/mob/living/carbon/human) && !(user.l_hand && user.r_hand))
		user.put_in_hands(P)
	user.visible_message("\The [src] spits out a piece of paper.")
	return

/obj/item/device/scanner/attack_self(mob/user as mob)
	print_report(user)
	return 0

/obj/item/device/scanner/afterattack(atom/target, mob/user, proximity_flag, click_parameters)
	if(!proximity_flag) return

	if(!is_type_in_list(target, valid_types))
		to_chat(user, SPAN_WARNING("No scan data available on \the [target]!"))
		return
	var/scan = "Scan Result: \the [target]"
	form_title = scan

	if(istype(target, /mob/living/simple_animal))
		var/mob/living/simple_animal/M = target
		scan += "<br>Info: [M.desc]"
		scan += "<br>Sex: [pick("Male","Female")]"
		scan += "<br>Age: [rand(5-30)]"
		if(M.stat == DEAD)
			scan += "<br>Physical Analysis: This specimen is recently deceased."
		else if(M.health == M.maxHealth)
			scan += "<br>Physical Analysis: This specimen is showing signs of malnutrition and negligible radiation exposure."
		else if(M.health < M.maxHealth)
			scan += "<br>Physical Analysis: This specimen has suffered moderate wounds, and demonstrates signs of malnutrition and negligible radiation exposure."
		else if(M.health < M.maxHealth*0.5)
			scan += "<br>Physical Analysis: This specimen has suffered severe wounds, and demonstrates signs of malnutrition and negligible radiation exposure."
	else
		switch(target.type)
			if(/obj/structure/flora/grass/desert)
				scan += "<br>Info: A sample of a native grass specimen, identified as originating from the planet Moghes. Consult Zeng-Hu arborial database for further information."
				scan += "<br>Botanical Analysis: Minor radioactive contamination detected. Water and nutrient levels nominal."
				scan += "<br>Projection: Defoliation probability low."
			if(/obj/structure/flora/tree/desert)
				scan += "<br>Info: A native tree species of the planet Moghes. Consult Zeng-Hu arborial database for further information."
				scan += "<br>Botanical Analysis: Similar to Earth cacti, this specimen has evolved to survive in water-scarce environments. Soil nutrients below optimal levels. Signs of radioactive contamination detected. Recommend soil sample for further analysis."
				scan += "<br>Projection: Soil nutrient levels suboptimal for long-term growth, but sufficient for population maintenance."
			if(/obj/structure/flora/tree/jungle)
				scan += "<br>Info: A native tree species of the planet Moghes. Consult Zeng-Hu arborial database for further cross-referenced information."
				scan += "<br>Botanical Analysis: Nutrient levels approaching danger threshold. Water levels acceptable. Recommend soil sample for further analysis."
				scan += "<br>Analysis: Minor signs of radiation exposure. Scans do not indicate any serious damage to tree's genetic structure."
				scan += "<br>Projection: Current nutrient and water levels are acceptable for continued growth. Worsening conditions for specimen unlikely."
			if(/obj/structure/flora/grass/junglegrass, /turf/simulated/floor/exoplanet/grass/moghes)
				scan += "<br>Info: Sample of several native grasses identified as originating from the planet Moghes. Consult Zeng-Hu botanical database for further cross-referenced information."
				scan += "<br>Botanical Analysis: Water levels acceptable. Nutrient levels close to danger threshold. Some grasses present in sample show signs of radioactive contamination."
				scan += "<br>Analysis: Local flora population appears healthy, though will likely require maintenance."
				scan += "<br>Projection: Minor to moderate regional defoliation possible, but unlikely, within the next 1-5 years."
			if(/turf/simulated/floor/exoplanet/water/shallow/moghes)
				scan += "<br>Info: Water sample. pH of 7.4."
				if(!GLOB.water_purified)
					scan += "<br>Analysis: Fresh water, likely from a river, lake, or other inland aquifer. Boiling or purification recommended before sapient consumption."
					scan += "<br>Signs of radioactive sediment detected in low quantities. Prolonged consumption may cause adverse effects."
				else
					scan += "<br>Analysis: Purified fresh water, likely from a river, lake, or other inland aquifer. Sample is safe for sapient consumption."
					scan += "<br>No radioactive contamination present."
			if(/turf/simulated/floor/exoplanet/water/shallow/partial_sewage)
				scan += "<br>Info: Water sample. pH of 8.2. Alkaline contaminants detected alongside low levels of toxic material. Not recommended for sapient consumption."
				scan += "<br>Signs of radioactive sediment detected in low quantities."
			if(/turf/simulated/floor/exoplanet/water/shallow/sewage)
				scan += "<br>Info: Water sample. pH of 8.2. Alkaline contaminants detected alongside significant levels of toxic biological waste. Highly dangerous for sapient consumption or extended exposure."
				scan += "<br>Signs of radioactive sediment detected in low quantities."
	scan += "<br>Supply this data for analysis. Property of Zeng-Hu Pharmaceuticals."
	last_data = scan
	to_chat(user, SPAN_NOTICE("Scan complete."))
	playsound(loc, 'sound/machines/compbeep2.ogg', 25)

//Terminal
/obj/machinery/computer/terminal/scanner
	name = "\improper Zeng-Hu Analysis Terminal"
	desc = "A terminal designed to collect and process environmental data, often used by Zeng-Hu planetary survey teams. Bioscanner and survey probe reports, as well as various samples, papers, and data disks from the area, can be inserted into this terminal in order to collect a complete environmental survey of the region."
	desc_info = "There are many scannable and sampleable items within the Izilukh region. Though duplicate data can still be added, a more complete report will be provided if you bring a wide variety of samples. How thorough your exploration and research is will affect both the final result of the analysis, and the future of the humanitarian project. Explore, and see what you can find."
	icon_screen = "gyrotron_screen"
	icon_keyboard = "tech_key"
	var/scan_progress = 0
	var/list/scanned = list()

/obj/machinery/computer/terminal/scanner/get_examine_text(mob/user, distance, is_adjacent, infix, suffix)
	. = ..()
	if(stat & NOPOWER)
		. += "The screen is dark and unresponsive. It does not appear to have power."
	else if (scan_progress >= 100)
		. += "The screen reads 'Scan complete, press any key to print results."
	else
		. += "The screen reads 'Scan in progress: [scan_progress]%."

/obj/machinery/computer/terminal/scanner/attack_hand(mob/user)
	if(..())
		return
	if(stat & (NOPOWER|BROKEN))
		return
	if(scan_progress >= 100)
		to_chat(user, SPAN_NOTICE("\The [src] whirs, printing a report."))
		playsound(loc, 'sound/bureaucracy/print.ogg', 75, 1)
		print_report(user)
	else
		to_chat(user, SPAN_WARNING("\The [src] requires more data!"))

/obj/machinery/computer/terminal/scanner/attackby(obj/item/attacking_item, mob/user)
	var/firstscan = TRUE
	if(istype(attacking_item, /obj/item/paper))
		if(findtextEx(attacking_item.name, "Scan Result") ||  findtext(attacking_item.name, "survey report"))
			user.remove_from_mob(attacking_item)
			to_chat(user, SPAN_NOTICE("You insert \the [attacking_item] into \the [src]'s paper scanner'."))
			playsound(loc, 'sound/bureaucracy/scan.ogg', 75, 1)
			qdel(attacking_item)
			if(attacking_item.name in scanned)
				firstscan = FALSE
			else scanned += attacking_item.name
			if(firstscan)
				scan_progress += 5
				scan_progress = min(scan_progress, 100)
				to_chat(user, SPAN_NOTICE("New data added, scan progress increased to [scan_progress]%."))
			else
				scan_progress += 1
				scan_progress = min(scan_progress, 100)
				to_chat(user, SPAN_NOTICE("Duplicate data added, scan progress increased to [scan_progress]%."))
		else if(attacking_item.name == "systems log" || attacking_item.name == "power station log")
			user.remove_from_mob(attacking_item)
			to_chat(user, SPAN_NOTICE("You insert \the [attacking_item] into \the [src]'s paper scanner'."))
			playsound(loc, 'sound/bureaucracy/scan.ogg', 75, 1)
			qdel(attacking_item)
			scanned += attacking_item.name
			scan_progress += 10
			scan_progress = min(scan_progress, 100)
			to_chat(user, SPAN_NOTICE("New data added, scan progress increased to [scan_progress]%."))
		else if(istype(attacking_item, /obj/item/reagent_containers/glass/beaker))
			if(!istype(attacking_item, /obj/item/reagent_containers/glass/beaker/vial))
				to_chat(user, SPAN_WARNING("\The [attacking_item] will not fit in \the [src]'s analysis port - it looks to be sized for a small vial."))
				return
			else
				to_chat(user, SPAN_NOTICE("You insert \the [attacking_item] into \the [src]'s analysis port."))
				playsound(loc, 'sound/machines/compbeep2.ogg', 25)
				if(!attacking_item.reagents?.total_volume)
					to_chat(user, SPAN_WARNING("\The [attacking_item] contains nothing for \the [src] to analyze! With a beep, it is ejected."))
					return
				else if(attacking_item.reagents.has_reagent(/singleton/reagent/water))
					user.remove_from_mob(attacking_item)
					qdel(attacking_item)
					if("Water" in scanned)
						firstscan = FALSE
					else scanned += "Water"
					if(firstscan)
						scan_progress += 10
						scan_progress = min(scan_progress, 100)
						to_chat(user, SPAN_NOTICE("Water sample added to database, scan process increased to [scan_progress]%."))
					else
						scan_progress += 2
						scan_progress = min(scan_progress, 100)
						to_chat(user, SPAN_NOTICE("Secondary water sample added to database, scan progress increased to [scan_progress]%."))
				else
					to_chat(user, SPAN_WARNING("Invalid reagent sample. No scan data added."))
					return
	else if(istype(attacking_item, /obj/item/rocksliver))
		user.remove_from_mob(attacking_item)
		to_chat(user, SPAN_NOTICE("You insert \the [attacking_item] into \the [src]'s analysis port."))
		playsound(loc, 'sound/machines/compbeep2.ogg', 25)
		qdel(attacking_item)
		if("Rock" in scanned)
			firstscan = FALSE
		else scanned += "Rock"
		if(firstscan)
			scan_progress += 10
			scan_progress = min(scan_progress, 100)
			to_chat(user, SPAN_NOTICE("Geological sample added to database, scan process increased to [scan_progress]%."))
		else
			scan_progress += 2
			scan_progress = min(scan_progress, 100)
			to_chat(user, SPAN_NOTICE("Additional geologial sample added to database, scan progress increased to [scan_progress]%."))
	else if(istype(attacking_item, /obj/item/disk/mcguffin1))
		user.remove_from_mob(attacking_item)
		to_chat(user, SPAN_NOTICE("You insert \the [attacking_item] into \the [src]'s disk tray."))
		qdel(attacking_item)
		if("Disk1" in scanned)
			to_chat(user, SPAN_WARNING("The terminal displays an error - this data has already been processed. Further analysis will be of no use."))
		else
			scanned += "Disk1"
			scan_progress += 30
			scan_progress = min(scan_progress, 100)
			playsound(loc, 'sound/machines/compbeep2.ogg', 25)
			to_chat(user, SPAN_NOTICE("Data decrypted - system records of district power station. Progress increased to [scan_progress]%."))
	else if(istype(attacking_item, /obj/item/disk/mcguffin2))
		user.remove_from_mob(attacking_item)
		to_chat(user, SPAN_NOTICE("You insert \the [attacking_item] into \the [src]'s disk tray."))
		qdel(attacking_item)
		if("Disk2" in scanned)
			to_chat(user, SPAN_WARNING("The terminal displays an error - this data has already been processed. Further analysis will be of no use."))
		else
			scanned += "Disk2"
			scan_progress += 20
			scan_progress = min(scan_progress, 100)
			playsound(loc, 'sound/machines/compbeep2.ogg', 25)
			to_chat(user, SPAN_NOTICE("Data decrypted - operations log of the district's water purification system. Scan progress increased to [scan_progress]%."))
	else if(istype(attacking_item, /obj/item/disk/mcguffin3))
		user.remove_from_mob(attacking_item)
		to_chat(user, SPAN_NOTICE("You insert \the [attacking_item] into \the [src]'s disk tray."))
		qdel(attacking_item)
		if("Disk3" in scanned)
			to_chat(user, SPAN_WARNING("The terminal displays an error - this data has already been processed. Further analysis will be of no use."))
		else
			scanned += "Disk3"
			scan_progress += 30
			scan_progress = min(scan_progress, 100)
			playsound(loc, 'sound/machines/compbeep2.ogg', 25)
			to_chat(user, SPAN_NOTICE("Data decrypted - records of artillery impact zones logged from Mudki defensive system database. Scan progress increased to [scan_progress]%."))
	else
		to_chat(user, SPAN_WARNING("\The [src] cannot gain any useful data from \the [attacking_item]."))

/obj/machinery/computer/terminal/scanner/proc/print_report(mob/user)
	if(scan_progress < 100)
		return
	var/output = "{\[center\]\[logo_zh\]\[/center\]\
		\[center\]\[b\]\[i\]Environmental Analysis Report Summary\[/b\]\[/i\]\[hr\]\
		Environmental analysis of the southeastern district of Mudki indicates moderate ecological and infrastructural damage. Biological data shows that minor radiation exposure is present in local plants and animals, though local flora has sufficient water and nutrient levels to persist.\[br\]\
		Atmospheric analysis is clear of fallout, and soil samples indicate that radioactive contamination is light enough that proper anti-radiation countermeasures could protect the city from further exposure from radioactive dust storms. The region remains suitable for habitation by organic life.\[br\]"
	if(("Water" in scanned) || ("Disk2" in scanned))
		output += "\[br\]Hydrological data indicates that Lack of clean water access has been a significant issue for the district. Contamination in water supply lines could cause severe long-term negative consequences for local population and rebuilding efforts.\[br\]"
		if(GLOB.water_purified)
			output += "\[br\]Due to the reactivation of local water purifier systems, this is unlikely to pose a further issue to the district's residents. Damage to the purifier may require additional long-term maintenance, but its activation is an important step for future operations in the area.\[br\]"
	if("Disk1" in scanned)
		output += "\[br\]Analysis of the district's fusion power station indicates that restoring power to the district and maintaining access to basic utilities will be important for maintaining supply access until other transport routes into Mudki are viable.\[br\]"
	if("Disk3" in scanned)
		output += "\[br\]Analysis of Mudki's defensive monitoring data from the Izweski assault has allowed for in-depth mapping of critical damage zones. This will allow for further direction of humanitarian aid efforts throughout the city to the most harshly impacted areas."
	output += "\[br\]Overall conclusion: Mudki has suffered minimal impact from the Contact War, but long periods of infrastructural neglect and the recent rebellion have caused severe damage. The city's position will be vital for long-term restoration efforts, as the only functional spaceport in the northern Zazalais. Overall estimates indicate that Mudki's recovery is both possible and essential for future efforts at Wasteland reclamation. Full data has been transmitted to the SCCV Horizon central database."

	var/obj/item/paper/P = new /obj/item/paper(get_turf(src))
	P.set_content("Mudki Environmental Analysis",output)
