/// @description Insert description here
// You can write your code in this editor
draw_self();
if (!holeCovered) {
	draw_set_font(skipFont);
	draw_text(x - 30, y - 30, "Uh oh, there's a hole in the way.\nMaybe if you painted over it\nyou could cross over! See\nif you can find green paint.");
}