player_movement()
// Apply Rotation

for (var i = 0; i < array_length(step_functions); ++i){
	step_functions[i]()
	// these are scripts
}

var bearing_to_mouse = point_direction(x,y, mouse_x, mouse_y)

image_angle = bearing_to_mouse