var lemon1_struct = {
	image_angle : 0
}

var lemon2_struct = {
	image_angle : 180
}

instance_create_layer(x,y - 30, layer, oLemon_mini_opp, lemon1_struct)

instance_create_layer(x, y + 30, layer, oLemon_mini_opp, lemon2_struct)