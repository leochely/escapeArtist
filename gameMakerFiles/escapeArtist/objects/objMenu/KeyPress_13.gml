/// @description Selects the option


switch(menu_index){
	case 0:
		room_goto(level1);
		audio_stop_all();
		break;
	case 1:
		game_end();
		break;
}