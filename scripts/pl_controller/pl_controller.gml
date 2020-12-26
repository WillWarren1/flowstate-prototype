/// foundation of this file was built by Rat Casket and purchased in the Bundle for Racial Justice and Equality.
/// on itch.io, the store page can be found here: https://ratcasket.itch.io/hitboxes-and-hurtboxes
function pl_controller() {
	//player button inputs

	if(player == 0){
	    leftHold  = left;
	    rightHold = right;
	    upHold    = up;
	    downHold  = down;
    
	    left  = keyboard_check(vk_left);
	    right = keyboard_check(vk_right);
	    up    = keyboard_check(vk_up);
	    down  = keyboard_check(vk_down);
    
	    jumpHold = jump;
	    jump = keyboard_check(ord("Q"));
    
	    attackHold = attack;
	    attack = keyboard_check(ord("W"));
    
	    dashHold = dash;
	    dash = keyboard_check(ord("E"));
    
	    itemHold = item;
	    item = keyboard_check(ord("R"));
	}



}
