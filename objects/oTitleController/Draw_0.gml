/// @description Insert description here
// You can write your code in this editor
if (room == titleScreen) {
	draw_text(x, y, "TITLE TEXT")
	draw_text(x, y+20, "press ENTER or START to begin");
}

if (room == controlScreen) {
	draw_set_color(c_white);
	draw_text(32,32,string_hash_to_newline("LControl: Change Weapon"));
	draw_text(32,48,string_hash_to_newline("Q: Jump"));
	draw_text(32,64,string_hash_to_newline("W: Attack"));
	draw_text(32,80,string_hash_to_newline("E: Dash"));
	draw_text(32,96,string_hash_to_newline("Arrows: Move / Aim Attack"));
	draw_text(32,112,string_hash_to_newline("RControl: Show/Hide Boxes"));
	draw_text(32,128,string_hash_to_newline("R: Reset"));
}