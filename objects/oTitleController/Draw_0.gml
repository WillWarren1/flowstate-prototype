/// @description Insert description here
// You can write your code in this editor
if (room == titleScreen) {	
	draw_set_color(c_white);
	draw_text_transformed(x, y, "Novissime Rex", 3, 3, 0)	
	draw_text_transformed(x, y+64, "press ENTER or START to begin", 3, 3, 0);
	draw_text_transformed(x, y+192, "a demo by", 2, 2, 0);
	draw_text_transformed(x, y+224, "Pumpkin Head Training Dummy", 3, 3, 0);
}	

if (room == controlScreen) {	
	draw_set_color(c_white);
	draw_text_transformed(x,y,"Q/A Button: Jump,", 3, 3, 0);	
	draw_text_transformed(x,y+64,"W/X Button: Attack,", 3, 3, 0);	
	draw_text_transformed(x,y+128,"E/B Button: Dash,", 3, 3, 0);	
	draw_text_transformed(x,y+192,"Arrows/D-Pad/Left Stick: Move / Aim Attack,", 3, 3, 0);
	draw_text_transformed(x,y+256,"With enough flow, try air dashing.", 3, 3, 0);	
} 

if (room == creditScreen) {
	draw_set_color(c_white);
	draw_text_transformed(x,y,"Thanks For Playing", 3, 3, 0);
}