// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @description puppet_check(state);
/// @function puppet_check
/// @param argument0 = 'left' || 'right' || 'whatever control you want'

// pass in the control you desire, this script determines whether it will be controlled by player or AI
function puppet_check(argument0){

	if (self.player == 0) {
		switch(argument0) {
			case "left":
				return keyboard_check(vk_left)
			break;
			case "right":
				return keyboard_check(vk_right)
			break;
			case "up":
				return keyboard_check(vk_up)
			break;
			case "down":
				return keyboard_check(vk_down)
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