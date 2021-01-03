/// @description dodge attack
// You can write your code in this editor
if (currentState != states.tumble && hp > 0) {
	if (instance_exists(oPlayer) && instance_nearest(x, y, oPlayer).currentState == states.attack) {
		var hitboxDirection = point_direction(x, y, oPlayer.x, oPlayer.y);
		if ((hitboxDirection <= 90 || hitboxDirection >= 270) && facing == 1) {
			previouslyFacing = facing;
			facing = -1
			directionalIntent = "left"
			actionIntent = "dash"
			currentState = states.dash
		} else if ((hitboxDirection < 270 || hitboxDirection > 90) && facing == -1) {
			previouslyFacing = facing;
			facing = 1
			directionalIntent = "right";
			actionIntent = "dash"
			currentState = states.dash
		}
		if (alarm_get(1) <= 0) {
			alarm_set(1, room_speed * .25)
		}
	}
}