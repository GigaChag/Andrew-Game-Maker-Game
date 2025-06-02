if (hp <= 0) instance_destroy();

if abs(velo_x) < top_speed_due_to_thrust then
{
	velo_x = lengthdir_x(1.5, point_direction(x, y, oPlayer.x, oPlayer.y))
}
if abs(velo_y) < top_speed_due_to_thrust then
{
	velo_y = lengthdir_y(1.5, point_direction(x, y, oPlayer.x, oPlayer.y))
}


// gravity time!

var bearing_to_center = point_direction(x,y, 682.5, 383.5)

var strength = 0.1

velo_x +=lengthdir_x(strength,bearing_to_center); //0.5 is the speed
velo_y +=lengthdir_y(strength,bearing_to_center);

// apply velocity to position

if (!place_meeting(x + velo_x, y, oGlorb)) {
    x = x + velo_x
} else {
	velo_x = velo_x * -1
}
if (!place_meeting(x, y + velo_y, oGlorb)) {
	y = y + velo_y
} else {
	velo_y = velo_y *-1
}

image_index = 0

// rotation!

var bearing_to_player = point_direction(x,y, oPlayer.x, oPlayer.y)

oOpp_rotation(bearing_to_player, degree_per_frame)

var nearest_obj = instance_nearest(x,y, oGlorb)

if distance_to_object(nearest_obj) < 20 {
	var direction_to_nearest_obj = point_direction(x,y, nearest_obj.x, nearest_obj.y)
	accelerate(self, -1,direction_to_nearest_obj)
}
