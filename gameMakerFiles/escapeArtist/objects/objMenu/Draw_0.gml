/// @description Draws menu

var i = 0;

repeat(buttons){
	draw_text(x, y+ i * BUTTON_HEIGHT, button[i]);
	i++;
}
