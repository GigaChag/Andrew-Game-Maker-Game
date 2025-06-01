if on_cooldown = false {
	if energy >= energy_per_shot then
	{
		var oBullet_struct = {
			damage : bullet_damage
		}
		
		
		with (instance_create_layer(x,y, layer, oBullet, oBullet_struct))
		{
			direction = point_direction(oPlayer.x,oPlayer.y, mouse_x, mouse_y)
			speed = oPlayer.shot_speed
		}

		energy = energy - energy_per_shot
	} else {
		energy_bar_object.image_index = 1
	}

	alarm[0] = shot_cooldown
	on_cooldown = true
}