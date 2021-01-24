// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @description puppet_check(state);
/// @function puppet_check
/// @param argument0 = 'left' || 'right' || 'whatever control you want'

// pass in the control you desire, this script determines whether it will be controlled by player or AI
function puppet_check(argument0){

	if (self.player == 0) {
		var leftkey = keyboard_check(vk_left);
		var rightkey =  keyboard_check(vk_right);
		var upkey = keyboard_check(vk_up);
		var downkey = keyboard_check(vk_down);
		var jumpkey = keyboard_check(ord("Q"));
		var attackkey = keyboard_check(ord("W"));
		var dashkey = keyboard_check(ord("E"));
		var itemkey = keyboard_check(ord("R"));
		
		var i;
		for (i = 0; i < array_length_1d(global.gp); i ++) {
			if (global.gp[i] == true) {
				gamepad_set_axis_deadzone(i, .4)
				var _gpMap = gamepad_get_mapping(global.gp[i]);
				show_debug_message("Gamepad Mapping = " + _gpMap);
				leftkey = gamepad_button_check(i, gp_padl) || gamepad_axis_value(i, gp_axislh) < 0
				rightkey = gamepad_button_check(i, gp_padr) || gamepad_axis_value(i, gp_axislh) > 0
				upkey = gamepad_button_check(i, gp_padu) || gamepad_axis_value(i, gp_axislv) < 0
				downkey = gamepad_button_check(i, gp_padd) || gamepad_axis_value(i, gp_axislv) > 0
				jumpkey = gamepad_button_check_pressed(i, gp_face1)
				attackkey = gamepad_button_check_pressed(i, gp_face3)
				dashkey = gamepad_button_check_pressed(i, gp_face2)
				itemkey = gamepad_button_check_pressed(i, gp_face4)
			}
		}
		switch(argument0) {
			case "left":
				return leftkey
			break;
			case "right":
				return rightkey
			break;
			case "up":
				return upkey
			break;
			case "down":
				return downkey
			break;
			case "jump":
				return keyboard_check(ord("Q"))
			break;
			case "attack":
				return keyboard_check(ord("W"))
			break;
			case "dash":
				return keyboard_check(ord("E"))
			break;
			case "item":
				return keyboard_check(ord("R"))
			break;
		}
	} else {
		switch(argument0) {
			case "left":
				return !is_undefined(self.directionalIntent) && self.directionalIntent == "left";
			break;
			case "right":
				return !is_undefined(self.directionalIntent) && self.directionalIntent == "right"
			break;
			case "up":
				return !is_undefined(self.directionalIntent) && self.directionalIntent == "up"
			break;
			case "down":
				return !is_undefined(self.directionalIntent) && self.directionalIntent == "down"
			break;
			case "jump":
				return !is_undefined(self.actionIntent) && self.actionIntent == "jump"
			break;
			case "attack":
				return !is_undefined(self.actionIntent) && self.actionIntent == "attack"
			break;
			case "dash":
				return !is_undefined(self.actionIntent) && self.actionIntent == "dash"
			break;
			case "item":
				return !is_undefined(self.actionIntent) && self.actionIntent == "item"
			break;
		}
	}
}