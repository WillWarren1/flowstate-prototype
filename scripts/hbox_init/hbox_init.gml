function hbox_init() {
	//initialize a bunch of hitbox and hurtbox info
	if (player == 0) {
		hurtbox = hurtbox_create(-9 * facing,-26,18,26); //create and store hurtbox
	} else if(player == 1) {
		hurtbox = hurtbox_create(-14 * facing,-20,26,20); //create and store hurtbox
	} else {
		hurtbox = hurtbox_create(-6 * facing,-30,18,30); //create and store hurtbox
	}
	hitbox  = -1; //default hitbox variable

	dur     = 0; //number of frames the hitbox is active
	xHit    = 0; //horizontal knock back
	yHit    = 0; //vertical knock back
	hitStun = 0; //hit stun duration
	damage  = 0; //damage dealt
	invincible = false; //what it sounds like



}
