script_execute(pl_create,0,0,0,0,0);
gSpeed = 0;
hp = 650
canDash = true;
airDash = true;
playerWithinSight = false;
playerInstanceDistance = 500;
weapon = weapons.dagger;
player = 1;
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