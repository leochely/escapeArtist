var dx = 0;
var dy = 0;

if( keyboard_check(vk_left)){
	image_index=0;
	image_speed = 1.0;
	dx = -player_speed;
}
if( keyboard_check(vk_right)){
	image_index=0;
	image_speed = 1.0;
	dx = player_speed;
}
if( keyboard_check(vk_up)){
	image_index=0;
	image_speed = 1.0;
	dy = -player_speed;
}
if( keyboard_check(vk_down)){
	image_index=0;
	image_speed = 1.0;
	dy = player_speed;
}

x += dx;
y +=dy;