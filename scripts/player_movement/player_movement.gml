function player_movement(){
	
	var orignal_speed = speed

	if energy > 0 then {
		if (keyboard_check(ord("A"))) then 
		{	
			accelerate(oPlayer, 0.25*speed_multiplier, 180)
			energy -= energy_consum_speed_multiplier * 0.25
			if speed > max_speed {speed = orignal_speed}
		}
		if (keyboard_check(ord("D"))) then
		{
			accelerate(oPlayer, 0.25*speed_multiplier, 0)
			energy -= energy_consum_speed_multiplier * 0.25
			if speed > max_speed {speed = orignal_speed}
		}
		if (keyboard_check(ord("S"))) then
		{
			accelerate(oPlayer, 0.25*speed_multiplier, 270)
			energy -= energy_consum_speed_multiplier * 0.25
			if speed > max_speed {speed = orignal_speed}
		}
		if (keyboard_check(ord("W"))) then
		{
			accelerate(oPlayer, 0.25*speed_multiplier, 90)
			energy -= energy_consum_speed_multiplier * 0.25
			if speed > max_speed {speed = orignal_speed}
		}
	} else {
		oEnergy_bar_object.image_index = 1
	}
	// gravity
	var bearing_to_center = point_direction(x,y, 682.5, 383.5)

	var strength = 0.1
	
	accelerate(oPlayer, strength, bearing_to_center)
}