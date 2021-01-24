/// foundation of this file was built by Rat Casket and purchased in the Bundle for Racial Justice and Equality.
/// on itch.io, the store page can be found here: https://ratcasket.itch.io/hitboxes-and-hurtboxes
function pl_endStep() {
	//inherit code from parent
	event_inherited();

	//run code based on players current state
	switch(currentState){
	    case states.normal:
			if (player != 1) {
				pl_normalState();
			} else {
				fe_normalState();
			}
	    break;
    
	    case states.attack:
			if (player != 1) {
				pl_attackState();
			} else {
				fe_attackState();
			}
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
		case states.dead:
	        pl_deadState();
	    break;
	}

	//hit
	 //
	if(hit && !instanceIsInvincible){
	    squash_stretch(1.5,1.5);
	    weaponSprite = sprEmpty;  
		if (player == 0) {
			if (hp <= 0) {
				god.shouldRespawnPlayer = true;
				god.shakeForce = 2;
			} else {
				god.shakeForce = 1.35
			}
		} else {
			god.shakeForce = 1
		}
		if (player == 1) {
			gSpeed = .85 * gSpeedDefault
		}
	    god.shake  = true;
	    god.freeze = true;
	    y --;
		if (instance_exists(hitBy)) {
		    xSpeed = player == 1 ? .7 * hitBy.xHit : hitBy.xHit;
		    ySpeed = player == 1 ? .7 * hitBy.yHit : hitBy.yHit;
		    facing = hitBy.owner.facing * -1;
		    depth  = hitBy.depth;
		    hitStun = hitBy.hitStun;
		} else {
			xSpeed = 0;
		    ySpeed = 0;
		    hitStun = 65
		}
		if(hp <= 0){
			if (canGiveFlow) {
				hitBy.owner.flow += .25	
				canGiveFlow = false
			}
			currentState = states.dead
		} else {
			currentState = states.tumble;	
		}
		
		if (flow > 1){
			flow = 1
		} else if (flow <= 1) {
			flow = 0.85
		}
	    hit = false;
	}
	if (flow >= 2.75) {
		superJump = true;
	}

	//update hitbox position
	hbox_update();

	//animation control
	pl_animation();

	//destroy
	pl_destroy();



}
