function heavy_hitter(tier){
	
	var damage_tiers = [1.15, 1.25, 1.4]
	
	var shot_speed_tiers = [0.85, 0.7, 0.5]
	
	oPlayer.shot_speed = oPlayer.shot_speed * damage_tiers[tier]
	oPlayer.bullet_damage = oPlayer.bullet_damage * shot_speed_tiers[tier]
	
	basic_boon_code()
}