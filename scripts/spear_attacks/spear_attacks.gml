function spear_attacks() {
	//create hitboxes based on specific frames during the attack
	//and position the hitbox relative to the current weapon and attack
	// TODO: Set up health based hitstun

	switch(subState){    
	    case attacks.side_ground:
			if(frame_check(1,0)){
	            hitbox_create(10*facing,-14,28*facing,6,6,3.3*facing,-2.2,35,290 * flow); //was 8*facing for argument1 and 20*facing for argument3
				audio_play_sound(smallSwing, 4, false);
			}
	    break;
	    case attacks.side_air:
	        if(frame_check(1,0)){
	            hitbox_create(8*facing,-14,20*facing,6,6,3*facing,-2,35,265 * flow);
				audio_play_sound(smallSwing, 4, false);
	        }
	    break;
    
	    case attacks.up_ground:
	    case attacks.up_air:
	        if(frame_check(1,0)){
	            hitbox_create(8*facing,-22,20*facing,6,6,3.5*facing,-3.5,60,300 * flow);
	            hitbox.angle = 45 * facing;
				audio_play_sound(smallSwing, 4, false);
	        }        
	    break;
    
	    case attacks.down_ground:
	    case attacks.down_air:
	        if(frame_check(1,0)){
	            hitbox_create(22*facing,14,20*facing,6,6,3.5*facing,3,70,325 * flow);
	            hitbox.angle = 135 * facing;
				audio_play_sound(smallSwing, 4, false);
	        }  
	    break;
	}



}
