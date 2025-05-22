if (keyboard_check(vk_left)) velo_x = velo_x - 0.25;
if (keyboard_check(vk_right)) velo_x = velo_x + 0.25;
if (keyboard_check(vk_down)) velo_y = velo_y + 0.25;
if (keyboard_check(vk_up)) velo_y = velo_y - 0.25;

// Check for Max Speed

if abs(velo_y) > max_speed then
{
	velo_y = max_speed * sign(velo_y)
}

if abs(velo_x) > max_speed then
{
	velo_x = max_speed * sign(velo_x)
}

// gravity time!

var bearing_to_center = point_direction(x,y, 682.5, 383.5)

var strength = 0.1

velo_x +=lengthdir_x(strength,bearing_to_center); //0.5 is the speed
velo_y +=lengthdir_y(strength,bearing_to_center);

// Apply Rotation

var bearing_to_mouse = point_direction(x,y, mouse_x, mouse_y)

image_angle = bearing_to_mouse

// Move velo

x = x + velo_x
y = y + velo_y
