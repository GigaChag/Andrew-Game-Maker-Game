function accelerate(object, magnitude, direction_heading){
	var x_magnitude = lengthdir_x(magnitude, direction_heading)
	var y_magnitude = lengthdir_y(magnitude, direction_heading)
	hspeed += x_magnitude
	vspeed += y_magnitude
	// It's that simple?
}