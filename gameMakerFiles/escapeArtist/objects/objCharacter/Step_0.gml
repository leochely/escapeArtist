// Check to see if player is holding down shift key and a movement key

if(canMove){
	image_speed = 1;
	image_index = image_index % 2;
	// Sends player to end screnn if dead
	if playerHealth <= 0 {
		instance_destroy(all);
		audio_stop_all();
		room_goto(deathScreen)
	}
	
	if((keyboard_check(vk_shift) || gamepad_button_check(0, gp_face1)) && playerStamina > 0 && (keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_left) || keyboard_check(vk_right) || gamepad_button_check(0, gp_padu) || gamepad_button_check(0, gp_padr) || gamepad_button_check(0, gp_padl) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) != 0 || gamepad_axis_value(0, gp_axislh) != 0)){
		moveSpeed = playerSpeed * 2;
		image_speed = 2;
		playerStamina--;
	}
	else{
		moveSpeed = playerSpeed;
	}
	
	if(keyboard_check(vk_nokey)) image_speed = 0;

	// Get player direction
	var dx = gamepad_axis_value(0, gp_axislh) + keyboard_check(vk_right) + gamepad_button_check(0, gp_padr) - keyboard_check(vk_left) - gamepad_button_check(0, gp_padl);
	var dy = gamepad_axis_value(0, gp_axislv) + keyboard_check(vk_down) + gamepad_button_check(0, gp_padd) - keyboard_check(vk_up) - gamepad_button_check(0, gp_padu);
	
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


// Controller support

if (num_glues > 0 && gamepad_button_check_pressed(0, gp_face3)) {
	instance_create_layer(x, y, "Instances", objGlue)
	num_glues--
}