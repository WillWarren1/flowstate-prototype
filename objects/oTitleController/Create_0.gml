/// @description Insert description here
// You can write your code in this editor
var gp_num = gamepad_get_device_count();	
for (var i = 0; i < gp_num; i++;) {	
	if gamepad_is_connected(i) global.gp[i] = true else global.gp[i] = false;	
} 

font	= font_add_sprite( sfont_jasontomlee, ord(" "), 1, 3);
draw_set_font( font );
