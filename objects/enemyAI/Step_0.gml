/// @description Insert description here
// You can write your code in this editor



if (ds_list_size(enemyList) > 0) {
	
	var i;
	for (i = 0; i < ds_list_size(enemyList); i++) {
		var thisEnemy = ds_list_find_value(enemyList, i);
		with(thisEnemy) {
			if (hp >= 0) {
				if(onGround &&
				instance_exists(oPlayer) &&
				actionIntent != "dash" &&
				instance_nearest(x, y, oPlayer).currentState == states.attack &&
				distance_to_object(oPlayer) <= 60) {
					if (alarm_get(2) <= 0) {
						alarm_set(2, room_speed * .2);
					}
				} else if (playerWithinSight && instance_exists(oPlayer) && instance_nearest(x, y, oPlayer).currentState != states.dead) {
					var playerDirection = point_direction(x, y, oPlayer.x, oPlayer.y);
					if (actionIntent != "attack") {
						if (alarm_get(0) <= 0) {       
							alarm_set(0, room_speed * .5)
						}
					}
					 if (playerInstanceDistance > 15 && (currentState != states.dash || alarm_get(2) <= 0)) {
						if (playerDirection >= 45 && playerDirection <= 135) {
							if (directionalIntent != "up") {
								directionalIntent = "up"
							}
						} else if (playerDirection <= 315 && playerDirection >= 225) {
							if (directionalIntent != "down") {
								directionalIntent = "down"
							}
						} else if (playerDirection < 45 || playerDirection > 315) {
							if (directionalIntent != "right") {
								directionalIntent = "right"
							}
						} else if (playerDirection < 225 || playerDirection > 135) {
							if (directionalIntent != "left") {
								directionalIntent = "left"
							}
						}
					} else {
						directionalIntent = ""
					}
				}
			} else {
				if (alarm_get(3) <= 0) {
					canGiveFlow = true
					alarm_set(3, room_speed * 4);
				}
			}
		}
	}
}