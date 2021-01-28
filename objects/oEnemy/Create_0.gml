script_execute(pl_create,0,0,0,0,0);

canDash = true;
playerWithinSight = false;
playerInstanceDistance = 500;
weapon = weapons.axe;
player = -1;
directionalIntent = "";
actionIntent = "";

previousActionIntent = actionIntent;
previouslyFacing = facing;

flow = 1;
canGiveFlow = false;

spawnX = x;
spawnY = y;
hasBeenReplaced = false;

searchingForPlayer = false;
givingUpSearch = true;
playerIsTooHigh = false;
whatTheFuckDebug = false;
playerDirection = -1;

	//hit and hurtboxes
	hbox_init();