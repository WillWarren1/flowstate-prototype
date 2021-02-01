function pl_animation() {
	//x and y position of the sprite
	xPos = x;
	yPos = y;

	//make sure x and y scale is always trying to reset to 1
	xScale = approach(xScale,1,0.05);
	yScale = approach(yScale,1,0.05);

	//store current sprite information
	currentSprite = sprite;

	//landing squish
	if(onGround){
	    if(!landed){
	        squash_stretch(1.3,0.7);
	        landed = true;
	    }
	}else{
	    landed = false;
	}

	//change sprites and animations based on current state
	switch(currentState){
	    case states.normal:
	        //grounded movement
	        if(onGround || player == 1){
	            //idle
	            if(!left && !right){
	                if(down){
	                    //crouch
	                    animation_set(fd_pl_idle,weaponRecover); //sprPlayer_Recovery_Base was here
	                    weaponSprite = weaponRecover;
	                }else{
	                    //body
	                    animation_set(fd_pl_idle,idleSprite);
	                    weaponSprite = weaponIdle;
	                }
	            //run
	            }else{
	                animation_set(fd_pl_run,sprPlayer_Run_Base); //sprPlayerRunBase was here
	                weaponSprite = weaponRun;
	            }
	        //in air animation
	        }else{
	            animation_set(fd_pl_jump,sprPlayer_Idle_Base); //sprPlayerJumpBase was here
	            weaponSprite = weaponJump;
	            //change sprite frame based on vertical speed
	            if(ySpeed < 1){
	                currentFrame = 0;
	            }else{
	                currentFrame = 1;
	            }
	        }
        
	        //change facing direction based on left/right. 
	        //facing flips the sprite to the left and right.
	        if(left){
	            facing = -1;
	        }else if(right){
	            facing = 1;
	        }
	    break;
    
	    case states.dash:
	        animation_set(fd_pl_roll,sprPlayer_Dash_Base); //sprPlayer_Dash_Base was here
	        if player = 0
				{
				weaponSprite = sprDinoDash
				}
			else
				{
				if player = -1
					{
					weaponSprite = spr_mantidDash
					}
				else
					{
					weaponSprite = spr_flyingEnemy
					}
				}
	    break;
    
	    case states.dead:
	        animation_set(fd_pl_dead,sprPlayer_Dead_Base); //sprPlayer_Dead_Base was here
	          if player = 0
				{
				weaponSprite = sprDinoDead
				}
			else
				{
				if player = -1
					{
					weaponSprite = spr_mantidDead
					}
				else
					{
					weaponSprite = spr_flyingEnemyDead
					}
				}        
	    break;
    
	    case states.attack:
	        switch(subState){
	            case attacks.side_ground:
	                animation_set(fd_side,sideSpriteG);
	                weaponSprite = sideSpriteG;
	            break;
            
	            case attacks.side_air:
	                animation_set(fd_side,sideSpriteA);
	               weaponSprite =sideSpriteA;            
	            break;
            
	            case attacks.up_ground:
	                animation_set(fd_up,upSpriteG);
	                weaponSprite = upSpriteG;        
	            break;
            
	            case attacks.up_air:
	                animation_set(fd_up,upSpriteA);
	                weaponSprite = upSpriteA;          
	            break;
            
	            case attacks.down_ground:
	                animation_set(fd_down,downSpriteG);
	                weaponSprite = downSpriteG;         
	            break;
            
	            case attacks.down_air:
	                animation_set(fd_down,downSpriteA);
	                weaponSprite = downSpriteA;            
	            break;
	        }
	    break;
    
	    case states.recovery:
	        animation_set(fd_pl_recovery,sprPlayer_Recovery_Base);//sprPlayer_Recovery_Base was here
	              if player = 0
				{
				weaponSprite = sprDinoRecover
				}
			else
				{
				if player = -1
					{
					weaponSprite = spr_mantidCrouch
					}
				else
					{
					weaponSprite = spr_flyingEnemy
					}
				}     
	    break;
    
	    case states.tumble:
	        //draw hit sprite during hit stop
	        if(god.freeze){
	            animation_set(fd_pl_tumble,sprPlayer_Hit_Base); //sprPlayer_Hit_Base was here
	              if player = 0
				{
				weaponSprite = sprDinoHurt
				}
			else
				{
				if player = -1
					{
					weaponSprite = spr_mantidHurt
					}
				else
					{
					weaponSprite = spr_flyingEnemy
					}
				}     
	        }else{
	            //laying down on the ground after being hit
	            if(onGround){
	                animation_set(fd_pl_tumble,sprPlayer_Dead_Base ); //sprPlayer_Dead_Base was here
	                	              if player = 0
				{
				weaponSprite = sprDinoDead
				}
			else
				{
				if player = -1
					{
					weaponSprite = spr_mantidCrouch
					}
				else
					{
					weaponSprite = spr_flyingEnemy
					}
				}     
	            //flying through the air after being hit      
	            }else{
	                animation_set(fd_pl_dead,sprPlayer_Tumble_Base); //sprPlayer_Tumble_Base was here
	                	              if player = 0
				{
				weaponSprite = sprDinoDead
				}
			else
				{
				if player = -1
					{
					weaponSprite = spr_mantidHurt
					}
				else
					{
					weaponSprite = spr_flyingEnemy
					}
				}            
	            }
	        }
	    break;
	}

	//reset animation counters if sprite changes
	if(lastSprite != currentSprite){
	    frame_reset();
	    lastSprite = currentSprite;
	}



}
