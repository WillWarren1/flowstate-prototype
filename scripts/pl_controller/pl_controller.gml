/// foundation of this file was built by Rat Casket and purchased in the Bundle for Racial Justice and Equality.
/// on itch.io, the store page can be found here: https://ratcasket.itch.io/hitboxes-and-hurtboxes
function pl_controller() {
	//player button inputs

	    leftHold  = left;
	    rightHold = right;
	    upHold    = up;
	    downHold  = down;
    
	    left  = puppet_check("left");
	    right = puppet_check("right");
	    up    = puppet_check("up");
	    down  = puppet_check("down");
    
	    jumpHold = jump;
	    jump = puppet_check("jump");
    
	    attackHold = attack;
	    attack = puppet_check("attack");
    
	    dashHold = dash;
	    dash = puppet_check("dash");
    
	    itemHold = item;
	    item = puppet_check("item");
}
