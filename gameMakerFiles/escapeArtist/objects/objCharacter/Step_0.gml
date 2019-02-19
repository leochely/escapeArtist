var dx = 0;
var dy = 0;

if(keyboard_check(vk_shift) && playerStamina > 0){
	playerSpeed = 20;
	playerStamina--;
}
else{
	playerSpeed = 10;
}

if(keyboard_check(vk_left) && !position_meeting(x-sprite_width-playerSpeed, y, objWall)){
	image_index=0;
	image_speed = 1.0;
	dx = -playerSpeed;
}
if(keyboard_check(vk_right) && !position_meeting(x+sprite_width+playerSpeed, y, objWall)){
	image_index=0;
	image_speed = 1.0;
	dx = playerSpeed;
}
if(keyboard_check(vk_up) && !position_meeting(x, y-sprite_width-playerSpeed, objWall)){
	image_index=0;
	image_speed = 1.0;
	dy = -playerSpeed;
}
if(keyboard_check(vk_down) && !position_meeting(x, y+sprite_width+playerSpeed, objWall)){
	image_index=0;
	image_speed = 1.0;
	dy = playerSpeed;
}

x += dx;
y +=dy;
