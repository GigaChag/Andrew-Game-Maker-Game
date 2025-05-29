if on_cooldown = false {
	if energy >= energy_per_shot then
	{
		with (instance_create_layer(x,y, layer, oBullet))
		{
			direction = point_direction(oPlayer.x,oPlayer.y, mouse_x, mouse_y)
			speed = shot_speed;
		}

		energy = energy - energy_per_shot
	} else {
		energy_bar_object.image_index = 1
	}

	alarm[0] = shot_cooldown
	on_cooldown = true
}