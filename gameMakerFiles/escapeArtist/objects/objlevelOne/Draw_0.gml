/// @description Draws message to the player

if (messageDisplay > 0) {
	draw_set_font(fntMenu);
	draw_text(500, 360, "You remember buying cheap\npaint online, but now you\nended up inside one of your\npaintings! What happened?\nAnyway, all you can do now is\ntry to escape!");
	draw_set_font(skipFont);
	draw_text(500, 700, "To skip, press space");
	// space bar press
	if (keyboard_check(vk_space)) {
		messageDisplay = 0;
	}
}


