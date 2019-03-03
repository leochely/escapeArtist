/// @description Draws menu

var i = 0;
draw_set_font(fntMenu);

repeat(buttons){
	draw_text(x, y + i * BUTTON_HEIGHT, button[i]);
	i++;
}

draw_arrow(x-20, y + 20 + menu_index * BUTTON_HEIGHT, x-10, y + 20 + menu_index * BUTTON_HEIGHT, 1);