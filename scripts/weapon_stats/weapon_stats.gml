 // foundation of this file was built by Rat Casket and purchased in the Bundle for Racial Justice and Equality.
// on itch.io, the store page can be found here: https://ratcasket.itch.io/hitboxes-and-hurtboxes
 function weapon_stats() {
	//set sprites and frame data based on current weapon

	switch(weapon){
	    //sword
	    case weapons.sword:
	        playerRun = sprPlayer_Run_Base;
			canCharge = false;
	        idleSprite   = sprPlayer_Idle_Base;
	        weaponIdle   = sprSword_Idle;
	        weaponRun    = sprSword_Run;
	        weaponJump   = sprSword_Jump;
			weaponRecover = sprPlayer_Recovery_Base;
	        weaponSprite = sprSword_Idle;
	        sideSpriteG  = sprSword_Attack_Side_G;
	        sideSpriteA  = sprSword_Attack_Side_A;
	        upSpriteG    = sprSword_Attack_Up_G;
	        upSpriteA    = sprSword_Attack_Up_A;
	        downSpriteG  = sprSword_Attack_Down_G;
	        downSpriteA  = sprSword_Attack_Down_A;
	        fd_side      = fd_sword_side;
	        fd_up        = fd_sword_up; 
	        fd_down      = fd_sword_down;
	    break;
    
	    //dagger
	    case weapons.dagger:
	        playerRun = spr_flyingEnemy //sprPlayer_Run_Base;
			canCharge = false;
	        idleSprite   = spr_flyingEnemy //sprDagger_Idle;
	        weaponIdle   = spr_flyingEnemy //sprDagger_Idle;
	        weaponRun    = spr_flyingEnemy //sprDagger_Run;
	        weaponJump   = spr_flyingEnemy //sprDagger_Jump;
			weaponRecover = spr_flyingEnemy //sprPlayer_Recovery_Base;
	        weaponSprite = spr_flyingEnemy //sprDagger_Idle;
	        sideSpriteG  = spr_flyingEnemyAttack //sprDagger_Attack_Side_G;
	        sideSpriteA  = spr_flyingEnemyAttack //sprDagger_Attack_Side_A;
	        upSpriteG    = spr_flyingEnemyAttack //sprDagger_Attack_Up_G;
	        upSpriteA    = spr_flyingEnemyAttack //sprDagger_Attack_Up_A;
	        downSpriteG  = spr_flyingEnemyAttack //sprDagger_Attack_Down_G;
	        downSpriteA  = spr_flyingEnemyAttack //sprDagger_Attack_Down_A;
	        fd_side      = fd_dagger_side;
	        fd_up        = fd_dagger_up;
	        fd_down      = fd_dagger_down;
	    break;
    
	    //axe
	    case weapons.axe:
			playerRun = spr_mantidRun //sprPlayer_Run_Base;
	        canCharge = false;
	        idleSprite   = spr_mantidIdle //sprAxe_Idle;
	        weaponIdle   = spr_mantidIdle //sprAxe_Idle;
	        weaponRun    = spr_mantidRun //sprAxe_Run;
	        weaponJump   = spr_mantidJump //sprAxe_Jump;
			weaponRecover = spr_mantidCrouch //sprPlayer_Recovery_Base;
	        weaponSprite = sprEmpty //sprAxe_Idle;
	        sideSpriteG  = spr_mantidAttack //sprAxe_Attack_Side_G;
	        sideSpriteA  = spr_mantidAttack //sprAxe_Attack_Side_A;
	        upSpriteG    = spr_mantidAttack_U //sprAxe_Attack_Up_G;
	        upSpriteA    = spr_mantidAttack_U //sprAxe_Attack_Up_G;
	        downSpriteG  = spr_mantidAttack_D //sprAxe_Attack_Up_G;
	        downSpriteA  = spr_mantidAttack_D //sprAxe_Attack_Up_G;
	        fd_side      = fd_axe_side;
	        fd_up        = fd_axe_up;
	        fd_down      = fd_axe_down;
	    break;
    
	    //spear
	    case weapons.spear:
	        canCharge = false;
	        idleSprite   = sprDinoIdle //sprSpear_Idle;
	        weaponIdle   = sprDinoIdle //sprSpear_Idle;
	        weaponRun    = sprDinoRun //sprSpear_Run;
	        weaponJump   = sprDinoJump //sprSpear_Jump;
			weaponRecover = sprDinoRecover // didnt exist before
			//playerRun = sprPlayer_Run_Base;
	        weaponSprite = sprPlayer_Idle_Base //sprSpear_Idle;
	        sideSpriteG  = sprDinoAttack_G //sprSpear_Attack_Side_G;
	        sideSpriteA  = sprDinoAttack_A //sprSpear_Attack_Side_A;
	        upSpriteG    = sprDinoAttack_Up_G //sprSpear_Attack_Up_G;
	        upSpriteA    = sprDinoAttack_Up_A //sprSpear_Attack_Up_A;
	        downSpriteG  = sprDinoAttack_Down_G //sprSpear_Attack_Down_G;
	        downSpriteA  = sprDinoAttack_Down_A //sprSpear_Attack_Down_A;
	        fd_side      = fd_spear_side;
	        fd_up        = fd_spear_up;
	        fd_down      = fd_spear_down;
	    break;
	}



}
