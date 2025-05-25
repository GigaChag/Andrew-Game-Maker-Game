var bearing_to_center = point_direction(x,y, 682.5, 383.5)

var strength = 0.1

velo_x +=lengthdir_x(strength,bearing_to_center);
velo_y +=lengthdir_y(strength,bearing_to_center);

// Apply Rotation

x = x + velo_x
y = y + velo_y

age = age + 1