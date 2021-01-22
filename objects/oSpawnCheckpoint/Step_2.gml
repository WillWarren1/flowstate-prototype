/// @description Insert description here
// You can write your code in this editor

if (!isActive) {
	isActive = distance_to_object(oPlayer) <= 45;
} else {
	playerInstance = instance_nearest(x, y, oPlayer);
	if (playerInstance.currentState == states.dead && alarm_get(0) <= 0) {
		alarm_set(0, room_speed * 2)
	}
}