// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fe_attackState(){

	//dagger attacks
	dagger_attacks();
	
	//landing recovery
	recovery_set();

	//countdown hitbox duration if active
	if(dur > 0){
	    dur -= 1 * god.gameSpeed;
	}else{
	    dur = 0;
	}

	//reset to normal state when the attack animation ends
	if(animation_end()){
	    state_reset();  
	}
}