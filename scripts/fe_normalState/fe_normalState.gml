// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fe_normalState(){
	var moveFlow = .75 > flow ? .75 : flow
	if (moveFlow > 2.3) {
		moveFlow = 2.3
	}
	mSpeed = mSpeedDefault * moveFlow;

	//move
	if (onGround) {
		ySpeed = approach(ySpeed,-mSpeed,aSpeed * god.gameSpeed);
	} else if(left){
	    xSpeed = approach(xSpeed,-mSpeed,aSpeed * god.gameSpeed);
	}else if(right){
	    xSpeed = approach(xSpeed,mSpeed,aSpeed * god.gameSpeed);
	} else if (up) {
	    ySpeed = approach(ySpeed,-mSpeed,aSpeed * god.gameSpeed);
	} else if (down) {
		ySpeed = approach(1.08*ySpeed,mSpeed,aSpeed * god.gameSpeed);
	}
	
	//attack
	//change to the attack state and relevant subState based on direction and attack
	if(attack && !attackHold){{
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
	    if(!airDash){
	        dashDur = dashDurMax;
	        xSpeed = 7 * facing;
	        squash_stretch(1.3,0.7);
	        currentState = states.dash;
	    }
	}

}