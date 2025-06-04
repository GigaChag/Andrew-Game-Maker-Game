function expanded_fuel_stores(tier){
	var fuel_tiers = [1.1, 1.25, 1.4]
	
	oPlayer.starting_energy = oPlayer.starting_energy * fuel_tiers[tier]
	
	basic_boon_code(global.boon_list.expanded_fuel_stores_boon)
	
}