// Check to see if player is holding down shift key and a movement key

if(canMove){
	if(keyboard_check(vk_shift) && playerStamina > 0 && (keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_left) || keyboard_check(vk_right))){
		playerSpeed = 20;
		playerStamina--;
	}
	else{
		playerSpeed = 10;
	}

	// Get player direction
	var dx = keyboard_check(vk_right) - keyboard_check(vk_left);
	var dy = keyboard_check(vk_down) - keyboard_check(vk_up);

	// Detect collision with wall
	if(place_meeting(x + (dx*playerSpeed), y, objWall)){
		while(!place_meeting(x + sign(dx), y, objWall)){
			x += sign(dx);
		}
	}
	else{
		x += dx * playerSpeed;
	}

	if(place_meeting(x, y + (dy*playerSpeed), objWall)){
		while(!place_meeting(x, y + sign(dy), objWall)){
			y += sign(dy);
		}
	}
	else{
		y += dy * playerSpeed;
	}

	// TODO redirect to end game when playerhealth == 0

	if (x < 0) {
		x = 0;
	} else if (x > room_width) {
		x = room_width;
	}

	if (y < 0) {
		y = 0;
	} else if (y > room_height) {
		y = room_height;
	}
}