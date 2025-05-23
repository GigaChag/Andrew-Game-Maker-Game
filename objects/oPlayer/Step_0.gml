// Original Velocity to use later for energy consumpution code

var original_velo_y = velo_y
var original_velo_x = velo_x
if energy != 0 then
{
	var movement_y_key_pressed = false
	var movement_x_key_pressed = false
	if (keyboard_check(ord("A"))) then 
	{	
		movement_x_key_pressed = true
		velo_x = velo_x - 0.25
	}
	if (keyboard_check(ord("D"))) then
	{
		movement_x_key_pressed = true
		velo_x = velo_x + 0.25
	}
	if (keyboard_check(ord("S"))) then
	{
		movement_y_key_pressed = true
		velo_y = velo_y + 0.25
	}
	if (keyboard_check(ord("W"))) then
	{
		movement_y_key_pressed = true
		velo_y = velo_y - 0.25;
	}
	if movement_x_key_pressed then
	{
		energy = energy - 0.25
	}
	if movement_y_key_pressed then
	{
		energy = energy - 0.25
	}
}
// Check for Max Speed

if abs(velo_y) > max_speed then
{
	velo_y = max_speed * sign(velo_y)
}

if abs(velo_x) > max_speed then
{
	velo_x = max_speed * sign(velo_x)
}


show_debug_message(energy)

// gravity time!

var bearing_to_center = point_direction(x,y, 682.5, 383.5)

var strength = 0.1

velo_x +=lengthdir_x(strength,bearing_to_center);
velo_y +=lengthdir_y(strength,bearing_to_center);

// Apply Rotation

var bearing_to_mouse = point_direction(x,y, mouse_x, mouse_y)

image_angle = bearing_to_mouse

// Move velo

x = x + velo_x
y = y + velo_y
