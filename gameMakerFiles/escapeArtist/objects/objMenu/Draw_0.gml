/// @description Draws menu

var i = 0;

repeat(buttons){
	draw_text(x, y + i * BUTTON_HEIGHT, button[i]);
	i++;
}

draw_arrow(x-20, y + 10 + menu_index * BUTTON_HEIGHT, x-10, y + 10 + menu_index * BUTTON_HEIGHT, 1);