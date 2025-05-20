if (keyboard_check(vk_left)) velo_x = velo_x - 3;
if (keyboard_check(vk_right)) velo_x = velo_x + 3;
if (keyboard_check(vk_down)) velo_y = velo_y + 3;
if (keyboard_check(vk_up)) velo_y = velo_y - 3;

// Move velo

x = x + velo_x
y = y + velo_y