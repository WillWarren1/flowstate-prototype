/// foundation of this file was built by Rat Casket and purchased in the Bundle for Racial Justice and Equality.
/// on itch.io, the store page can be found here: https://ratcasket.itch.io/hitboxes-and-hurtboxes
function pl_endStep() {
	//inherit code from parent
	event_inherited();

	//run code based on players current state
	switch(currentState){
	    case states.normal:
	        pl_normalState();
	    break;
    
	    case states.attack:
	        pl_attackState();
	    break;
    
	    case states.dash:
	        pl_dashState();
	    break;
    
	    case states.recovery:
	        pl_recoveryState();
	    break;
    
	    case states.tumble:
	        pl_tumbleState();
	    break;
	}

	//hit
	if(hit){
	    squash_stretch(1.5,1.5);
	    weaponSprite = sprEmpty;       
	    god.shake  = true;
	    god.freeze = true;
	    y --;
	    xSpeed = hitBy.xHit;
	    ySpeed = hitBy.yHit;
	    facing = hitBy.owner.facing * -1;
	    depth  = hitBy.depth;
	    hitStun = hitBy.hitStun;
	    currentState = states.tumble;
		if(hp <= 0){
			currentState = states.dead	
		}
	    hit = false;
	}

	//update hitbox position
	hbox_update();

	//animation control
	pl_animation();

	//destroy
	pl_destroy();



}
