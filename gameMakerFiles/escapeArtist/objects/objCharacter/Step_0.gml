// Check to see if player is holding down shift key and a movement key

if(canMove){
	image_speed = 1;
	
	// Sends player to end screnn if dead
	if playerHealth <= 0 {
		instance_destroy(all);
		audio_stop_all();
		room_goto(deathScreen)
	}
	
	if(keyboard_check(vk_shift) && playerStamina > 0 && (keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_left) || keyboard_check(vk_right))){
		moveSpeed = playerSpeed * 2;
		image_speed = 2;
		playerStamina--;
	}
	else{
		moveSpeed = playerSpeed;
	}
	
	if(keyboard_check(vk_nokey)) image_speed = 0;

	// Get player direction
	var dx = keyboard_check(vk_right) - keyboard_check(vk_left);
	var dy = keyboard_check(vk_down) - keyboard_check(vk_up);
	
	if(keyboard_check(vk_right)) image_xscale = 1;
	else if (keyboard_check(vk_left)) image_xscale =-1;
	
	if(place_meeting(x, y, objGlue)) {
		moveSpeed = moveSpeed / 2
	}

	// Detect collision with walls
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
	
	// Checks that player in the room
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

else image_speed = 0;