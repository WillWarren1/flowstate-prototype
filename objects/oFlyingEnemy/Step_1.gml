script_execute(pl_beginStep,0,0,0,0,0);


playerInstanceDistance = distance_to_object(oPlayer);

if (playerInstanceDistance < 90) {
	playerWithinSight = true;
} else {
	playerWithinSight = false;
	directionalIntent = ""
}