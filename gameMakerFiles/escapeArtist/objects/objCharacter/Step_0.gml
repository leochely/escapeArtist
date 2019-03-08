// Check to see if player is holding down shift key and a movement key

if(canMove){
	
	if playerHealth <= 0 {
		instance_destroy()
		room_goto(menu)
	}
	
	if(keyboard_check(vk_shift) && playerStamina > 0 && (keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_left) || keyboard_check(vk_right))){
		moveSpeed = playerSpeed * 2;
		playerStamina--;
	}
	else{
		moveSpeed = playerSpeed;
	}

	// Get player direction
	var dx = keyboard_check(vk_right) - keyboard_check(vk_left);
	var dy = keyboard_check(vk_down) - keyboard_check(vk_up);
	
	if(place_meeting(x, y, objGlue)) {
		moveSpeed = moveSpeed / 2
	}

	// Detect collision with wall
	if(place_meeting(x + (dx*moveSpeed), y, objWall)){
		while(!place_meeting(x + sign(dx), y, objWall)){
			x += sign(dx);
		}
	}
	else{
		x += dx * moveSpeed;
	}

	if(place_meeting(x, y + (dy*moveSpeed), objWall)){
		while(!place_meeting(x, y + sign(dy), objWall)){
			y += sign(dy);
		}
	}
	else{
		y += dy * moveSpeed;
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