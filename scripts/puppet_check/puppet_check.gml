// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @description puppet_check(state);
/// @function puppet_check
/// @param argument0 = 'left' || 'right' || 'whatever control you want'

// pass in the control you desire, this script determines whether it will be controlled by player or AI
function puppet_check(argument0){

	if (self.player == 0) {
		//find active controller port
		var activeIndex = get_controller_port(self.flow > 2 ? .7 : .4);

		var leftkey = keyboard_check(vk_left) || gamepad_button_check(activeIndex, gp_padl) || gamepad_axis_value(activeIndex, gp_axislh) < 0;
		var rightkey =  keyboard_check(vk_right) || gamepad_button_check(activeIndex, gp_padr) || gamepad_axis_value(activeIndex, gp_axislh) > 0;
		var upkey = keyboard_check(vk_up) || gamepad_button_check(activeIndex, gp_padu) || gamepad_axis_value(activeIndex, gp_axislv) < 0;
		var downkey = keyboard_check(vk_down) ||  gamepad_button_check(activeIndex, gp_padd) || gamepad_axis_value(activeIndex, gp_axislv) > 0;
		var jumpkey = keyboard_check(ord("Q")) || gamepad_button_check(activeIndex, gp_face1);
		var attackkey = keyboard_check(ord("W")) || gamepad_button_check_pressed(activeIndex, gp_face3);
		var dashkey = keyboard_check(ord("E")) || gamepad_button_check_pressed(activeIndex, gp_face2);
		var itemkey = keyboard_check(ord("R")) || gamepad_button_check_pressed(activeIndex, gp_face4);
		
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
				return jumpkey
			break;
			case "attack":
				return attackkey
			break;
			case "dash":
				return dashkey
			break;
			case "item":
				return itemkey
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