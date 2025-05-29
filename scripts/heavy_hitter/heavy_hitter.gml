function heavy_hitter(tier){
	
	var damage_tiers = [1.15, 1.25, 1.4]
	
	var shot_speed_tiers = [0.85, 0.7, 0.5]
	
	
	oPlayer.shot_speed = oPlayer * damage_tiers[tier]
	oBullet.damage = oBullet.damage * shot_speed_tiers[tiers]
}