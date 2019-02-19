if(keyboard_check(vk_shift) && playerStamina > 0){
	playerSpeed = 20;
	playerStamina--;
}
else{
	playerSpeed = 10;
}

var dx = keyboard_check(vk_right) - keyboard_check(vk_left);
var dy = keyboard_check(vk_down) - keyboard_check(vk_up);

if(place_meeting(x + (dx*playerSpeed), y, objWall)){
	while(! place(place_meeting(x + sign(dx), y, objWall))){
		x += sign(dx);
	}
}
else{
	x += dx * playerSpeed;
}

if(place_meeting(x, y + (dy*playerSpeed), objWall)){
	while(! place(place_meeting(x, y + sign(dy), objWall))){
		y += sign(dy);
	}
}
else{
	y += dy * playerSpeed;
}