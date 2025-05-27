if energy >= energy_per_shot then
{
	with (instance_create_layer(x,y, layer, oBullet))
	{
		direction = point_direction(oPlayer.x,oPlayer.y, mouse_x, mouse_y)
		speed = 5;
	}

	energy = energy - energy_per_shot
}