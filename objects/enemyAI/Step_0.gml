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
					searchingForPlayer = true;
					playerDirection = point_direction(x, y, oPlayer.x, oPlayer.y);
					if (actionIntent != "attack") { 
						if (alarm_get(0) <= 0) {
							var attackBuildUp = instance_nearest(x, y, oPlayer).currentState == states.tumble ? .45 : random_range(.26, .35); 
							alarm_set(0, room_speed * attackBuildUp)
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
				if (!playerWithinSight && searchingForPlayer && alarm_get(4) <= 0) {
						var playerIsTooFar = distance_to_object(oPlayer) >= 400
						playerIsTooHigh = distance_to_object(oPlayer) >= 100 && playerDirection >= 0 && playerDirection <= 180
						if (!playerIsTooHigh && currentState != states.dash) {
							if (playerDirection < 70 || playerDirection > 290) {
								if (directionalIntent != "right") {
									directionalIntent = "right"
								}
							} else if (playerDirection < 255 || playerDirection > 100) {
								if (directionalIntent != "left") {
									directionalIntent = "left"
								}
							}
							if playerIsTooFar { directionalIntent = "" }
						} else if (alarm_get(4) <= 0) {
							alarm_set(4, room_speed * 2)
						}	
				} else if (!playerWithinSight && !searchingForPlayer) {
					directionalIntent = ""
				}
			} else {
				if (alarm_get(3) <= 0) {
					canGiveFlow = true
					alarm_set(3, room_speed * 60);
				} else {
					if (point_distance(spawnX, spawnY, oPlayer.x, oPlayer.y) > 480 && !hasBeenReplaced) {
						instance_create(spawnX, spawnY, oEnemy);
						hasBeenReplaced = true;
					}
				}
			}
		}
	}
}

if (ds_list_size(flyingEnemyList) > 0) {	
	var index;
	for (index = 0; index < ds_list_size(flyingEnemyList); index++) {
		var thisFlyEnemy = ds_list_find_value(flyingEnemyList, index);
		with(thisFlyEnemy) {
			if (hp >= 0) {
				if (instance_exists(oPlayer) &&
					actionIntent != "dash" &&
					instance_nearest(x, y, oPlayer).currentState == states.attack &&
					distance_to_object(oPlayer) <= 60) {
						if (alarm_get(2) <= 0) { 
							alarm_set(2, room_speed * .2);
						}
				} else if (playerWithinSight &&
						instance_exists(oPlayer) &&
						instance_nearest(x, y, oPlayer).currentState != states.dead &&
						distance_to_object(oPlayer) <= 50) {
						searchingForPlayer = true;
						playerDirection = point_direction(x, y, instance_nearest(x, y, oPlayer).x, instance_nearest(x, y, oPlayer).y);
						if (actionIntent != "attack") {
							if (alarm_get(0) <= 0) {       
								alarm_set(0, room_speed * .75)
							} 
						}
						if (playerInstanceDistance > 15 && (currentState != states.dash || alarm_get(2) <= 0)) {
							if (playerDirection >= 35 && playerDirection <= 145) {
								if (directionalIntent != "up") {
									directionalIntent = "up"
								}
							} else if (playerDirection <= 325 && playerDirection >= 215) {
								if (directionalIntent != "down") {
									directionalIntent = instance_nearest(x, y, oPlayer).currentState == states.tumble ? "up" : "down"
								}
							} else if (playerDirection < 35 || playerDirection > 325) {
								if (directionalIntent != "right") {
									directionalIntent = instance_nearest(x, y, oPlayer).currentState == states.tumble ? "left" : "right"
								} 
							} else if (playerDirection < 215 || playerDirection > 145) {
								if (directionalIntent != "left") {
									directionalIntent = instance_nearest(x, y, oPlayer).currentState == states.tumble ? "right" : "left"
								}
							}
						}
					}
					if (!playerWithinSight && searchingForPlayer) {
						playerDirection = point_direction(x, y, instance_nearest(x, y, oPlayer).x, instance_nearest(x, y, oPlayer).y);
						if (currentState != states.dash || alarm_get(2) <= 0) {
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
						}
						if (!givingUpSearch) {
							alarm_set(4, room_speed * 3)
							givingUpSearch = true;
						}
					}
				} else {
					if (alarm_get(3) <= 0) {
						canGiveFlow = true
						alarm_set(3, room_speed * 60);
					} else {
						if (point_distance(spawnX, spawnY, oPlayer.x, oPlayer.y) > 320 && !hasBeenReplaced) {
							instance_create(spawnX, spawnY, oFlyingEnemy);
							hasBeenReplaced = true;
						}
					}
				}
		}
	}
}