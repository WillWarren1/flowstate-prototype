/// @description movement
function pl_normalState() {
	mSpeed = mSpeedDefault;

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
	    if(jump && !jumpHold){
	        ySpeed = jPower;
	        squash_stretch(0.7,1.3);
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
	if(dash && !dashHold){
	    //air dash. only dash in the air if airDash is false
	    //set airDash to true if you have dashed in the air
	    if(!onGround){
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
	        xSpeed = 7 * facing;
	        squash_stretch(1.3,0.7);
	        currentState = states.dash;    
	    }
	}

	//reset airDash after landing on the ground
	if(onGround){
	    airDash = false;
	}



}
