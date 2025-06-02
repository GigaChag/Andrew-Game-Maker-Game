var lemon1_struct = {
	image_angle : 0
}

var lemon2_struct = {
	image_angle : 180
}

instance_create_depth(x,y - 30, 0, oLemon_mini_opp, lemon1_struct)

instance_create_depth(x, y + 30, 0, oLemon_mini_opp, lemon2_struct)