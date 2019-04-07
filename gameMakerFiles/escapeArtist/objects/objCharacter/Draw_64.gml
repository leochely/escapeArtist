/// @description Health and energy bar

draw_healthbar(10, 20, 200, 30, playerHealth, c_black, c_red, c_lime, 0, true, true);

draw_healthbar(10, 40, 200, 50, playerStamina, c_black, c_red, c_blue, 0, true, true);

if (num_bridges > 0) {
	draw_healthbar(10, 60, 200, 70, num_bridges * 20, c_black, c_red, c_red, 0, true, true);
}
if (num_glues > 0) {
	draw_healthbar(10, 80, 200, 90, num_glues * 33, c_black, c_yellow, c_yellow, 0, true, true);
}