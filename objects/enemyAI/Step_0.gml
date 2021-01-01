/// @description Insert description here
// You can write your code in this editor



if (ds_list_size(enemyList) > 0) {
	
	var i;
	for (i = 0; i < ds_list_size(enemyList) - 1; i++) {
		var thisEnemy = ds_list_find_value(enemyList, i);
		with(thisEnemy) {
			if (playerWithinSight && intent == "" && alarm_get(0) <= 0) {
				alarm_set(0, room_speed)
			}
		}
	}
}