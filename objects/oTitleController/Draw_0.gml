/// @description Insert description here
// You can write your code in this editor
if (room == titleScreen) {	
	draw_text(x, y, "TITLE TEXT")	
	draw_text(x, y+20, "press ENTER or START to begin");	
}	

if (room == controlScreen) {	
	draw_set_color(c_white);
	draw_text(x,y+48,"Q: Jump");	
	draw_text(x,y+64,"W: Attack");	
	draw_text(x,y+80,"E: Dash");	
	draw_text(x,y+96,"Arrows: Move / Aim Attack");	
} 