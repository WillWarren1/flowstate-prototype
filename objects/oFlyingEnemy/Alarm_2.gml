/// @description dodge attack
// You can write your code in this editor
if (currentState != states.tumble && hp > 0 && (alarm_get(0) >= (room_speed * .25)|| alarm_get(0) <= 0)) {
	if (instance_exists(oPlayer) && instance_nearest(x, y, oPlayer).currentState == states.attack) {
		var playerDirection = point_direction(x, y, oPlayer.x, oPlayer.y);
		if ((playerDirection <= 90 || playerDirection >= 270) && facing == 1) {
			previouslyFacing = facing;
			facing = -1
			directionalIntent = "left"
		} else if ((playerDirection < 270 || playerDirection > 90) && facing == -1) {
			previouslyFacing = facing;
			facing = 1
			directionalIntent = "right";
		}
			actionIntent = "dash"
			currentState = states.dash
		if (alarm_get(1) <= 0) {
			alarm_set(1, room_speed * .25)
		}
	}
}