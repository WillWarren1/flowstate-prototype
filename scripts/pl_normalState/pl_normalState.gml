/// foundation of this file was built by Rat Casket and purchased in the Bundle for Racial Justice and Equality.
/// on itch.io, the store page can be found here: https://ratcasket.itch.io/hitboxes-and-hurtboxes
/// @description movement
function pl_normalState() {
	var moveFlow = .75 > flow ? .75 : flow
	if (moveFlow > 2.3) {
		moveFlow = 2.3
	}
	mSpeed = mSpeedDefault * moveFlow;

	//move left and right
	if(left){
	    xSpeed = approach(xSpeed,-mSpeed,aSpeed * god.gameSpeed);
	}else if(right){
	    xSpeed = approach(xSpeed,mSpeed,aSpeed * god.gameSpeed);
	}else{
	    xSpeed = approach(xSpeed,0,aSpeed * god.gameSpeed);
	}

	//jump if you are on the ground and not holding the jump button
	if(onGround){ 
		numOfAirJumps = 1
	    if(jump && !jumpHold){
			var jumpFlow = 1 > (flow*.4) ? 1 : (flow*.4)
			if (jumpFlow > 1.5) {
				jumpFlow = 1.5
			}
	        ySpeed = jPower * jumpFlow;
	        squash_stretch(0.7,1.3);
	    }
	} else {
		if(jump && !jumpHold && numOfAirJumps > 0) {
			var jumpFlow = 1 > (flow*.5) ? 1 : (flow*.5)
			if (jumpFlow > 1.3) {
				jumpFlow = 1.3
			}
			ySpeed = jPower * jumpFlow;
	        squash_stretch(0.7,1.3);
			numOfAirJumps --
		} else if(numOfAirJumps <= 0) {
			numOfAirJumps = 0
		}
	}

	//jump code
	jump_control();

	//attack
	//change to the attack state and relevant subState based on direction and attack
	if(attack && !attackHold){
	    //grounded attacks
	    if(onGround){
	        if(up){
	            subState = attacks.up_ground;
	            squash_stretch(0.7,1.3);
	        }else if(down){
	            subState = attacks.down_ground;
	            squash_stretch(0.7,1.3);
	        }else{
	            subState = attacks.side_ground;
	            squash_stretch(1.3,0.7);
	        }
	    }else{
	        //air attacks
	        if(up){
	            subState = attacks.up_air;
	            squash_stretch(0.7,1.3);
	        }else if(down){
	            subState = attacks.down_air;
	            squash_stretch(0.7,1.3);
	        }else{
	            subState = attacks.side_air;
	            squash_stretch(1.3,0.7);
	        }
	    }
	    currentState = states.attack;
	    frame_reset();
	}

	//dash
	if(dash && !dashHold && canDash){
	    //air dash. only dash in the air if airDash is false
	    //set airDash to true if you have dashed in the air
	    if(!onGround && flow > 1.5){
	        if(!airDash){
	            dashDur = dashDurMax;
	            xSpeed = 7 * facing;
	            squash_stretch(1.3,0.7);
	            currentState = states.dash;
	            airDash = true;
	        }
	    //ground dash
	    }else if(onGround){
	        dashDur = dashDurMax;
			if (left || leftHold) {
				xSpeed = -7;
			} else if (right || rightHold) {
				xSpeed = 7;
			} else {
				xSpeed = 7 * facing;
			}
	        squash_stretch(1.3,0.7);
	        currentState = states.dash;    
			if (alarm_get(0) <= 0) {
				canDash = false;
				alarm_set(0, room_speed * 2);
			}
	    }
	}

	//reset airDash after landing on the ground
	if(onGround){
	    airDash = false;
	}



}
