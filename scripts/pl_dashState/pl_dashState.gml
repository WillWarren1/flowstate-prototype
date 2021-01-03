function pl_dashState() {
	var jumpFlow = 1 > (flow*.5) ? 1 : (flow*.5)
	//zero out ySpeed and gradually slow down the xSpeed
	ySpeed = 0;
	xSpeed = approach(xSpeed * jumpFlow,0,0.5 * god.gameSpeed);

	//count down dashDur and reset state to normal when dashDur reaches 0
	dashDur -= 1 * god.gameSpeed;
	if(dashDur <= 0){
	    state_reset();
	} else if(dashDur <= 8 && dashDur >= 2) {
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
	}
}
