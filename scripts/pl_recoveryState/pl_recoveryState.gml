function pl_recoveryState() {
	if (recoverDur == 35) {
		audio_play_sound(landing, 1, false);
	}
	//slow horizontal speed
	xSpeed = approach(xSpeed,0,aSpeed * god.gameSpeed);

	//count down recoverDur until it reaches 0, and then reset to normal state
	recoverDur -= 1 * god.gameSpeed;
	if(recoverDur <= 0){
	    recoverDur = 35;
	    state_reset();
	} else if (recoverDur <= 35 && recoverDur >= 22) {
		//dash
		if(dash && !dashHold){
	      dashDur = dashDurMax;
	      xSpeed = 7 * facing;
		  squash_stretch(1.3,0.7);
	      currentState = states.dash;
		}
	}

	//delete your hitbox if one was active
	if(hitbox != -1){
	    with(hitbox){
	        destroy = true;
	    }
	}



}
