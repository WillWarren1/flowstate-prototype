 /// foundation of this file was built by Rat Casket and purchased in the Bundle for Racial Justice and Equality.
/// on itch.io, the store page can be found here: https://ratcasket.itch.io/hitboxes-and-hurtboxes
function pl_create() {
	//inherit from parent object
	event_inherited();

	landed = 0;

	player = 0;
	instanceIsInvincible = false;
	//buttons
	up    = false;
	down  = false;
	left  = false;
	right = false;

	leftHold  = left;
	rightHold = right;
	upHold    = up;
	downHold  = down;

	jump  = false;	   
	jumpHold = false;
	numOfAirJumps = 1;

	attack = false;
	attackHold = false;

	dash = false;
	dashHold = false;

	item = false;
	itemHold = false;

	mash = false;
	superJump = false;

	//states
	currentState = states.normal;
	lastState    = currentState;
	subState     = states.normal;

	//movement
	mSpeed = 2;
	mSpeedDefault = mSpeed;
	aSpeed = 0.5;
	aSpeedDefault = aSpeed;
	cSpeed = 1;
	tSpeed = 20;
	jPower = -3.55;
	facing = 1;

	gSpeedDefault = gSpeed;

	dashDur = 10;
	dashDurMax = 10;
	recoverDur = 20;

	airDash = false;

	//fighting
	//hit and hurtboxes
	hbox_init();

	hpMax = 1000;
	hp    = hpMax;

	stunDur = 0;
	knockBack = false;

	//attack
	attackType = attacks.side_ground;

	//hit
	hit = false;
	hitBy = -1;

	//frame data
	pl_frameData();

	//draw
	animation_create();

	//weapons
	weapon = weapons.spear;
	weapon_stats();

	//destroy
	destroy = false;



}
