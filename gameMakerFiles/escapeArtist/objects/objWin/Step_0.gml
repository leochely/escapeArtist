/// @description Returns to main menu

if(keyboard_check(vk_space) || gamepad_button_check(0, gp_face1)){
	audio_stop_sound(sndLvl1);
	room_goto(menu);
}