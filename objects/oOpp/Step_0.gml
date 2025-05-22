visible = true

x = x + lengthdir_x(1.5, point_direction(x, y, oPlayer.x, oPlayer.y))
y = y + lengthdir_y(1.5, point_direction(x, y, oPlayer.x, oPlayer.y))


// gravity time!

var bearing_to_center = point_direction(x,y, 682.5, 383.5)

var strength = 0.1

velo_x +=lengthdir_x(strength,bearing_to_center); //0.5 is the speed
velo_y +=lengthdir_y(strength,bearing_to_center);

