/// @description Insert description here
// You can write your code in this editor
var activeIndex = get_controller_port(.4)	

var proceedKey = keyboard_check_pressed(vk_enter)  || gamepad_button_check(activeIndex, gp_face1) || gamepad_button_check(activeIndex, gp_start);	

if (proceedKey)  {	
	room_goto_next();	
} 