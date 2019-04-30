/// @description Change menu selection

menu_move = gamepad_button_check_pressed(0, gp_padd) + keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up) - gamepad_button_check_pressed(0, gp_padu);

menu_index += menu_move;

if(menu_index < 0) menu_index = buttons - 1;
if(menu_index > buttons-1) menu_index = 0;


if(keyboard_check(vk_enter) || gamepad_button_check_pressed(0, gp_face1)){
	switch(menu_index){
		case 0:
			room_goto(level1);
			audio_stop_all();
			break;
		case 1:
			game_end();
			break;
	}
}