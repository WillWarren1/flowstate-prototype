// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//argument0 =  deadzone between 0 and 1
function get_controller_port(argument0) {
	var activeIndex = -1;
	for (i = 0; i < array_length_1d(global.gp); i ++) {
		if (global.gp[i] == true) {
			gamepad_set_axis_deadzone(i, .4)
			activeIndex = i;
			break;
		}
	}
	return activeIndex
}