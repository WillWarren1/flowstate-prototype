/// @description prepare attack
// You can write your code in this editor
if (hp > 0) {
	actionIntent = "attack";

	if (alarm_get(1) <= 0) {
		alarm_set(1, room_speed * 1.5);	
	}
}