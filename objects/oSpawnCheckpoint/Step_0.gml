/// @description Insert description here
// You can write your code in this editor
shouldSpawn = !isRespawning && god.shouldRespawnPlayer ;

if (distance_to_object(oPlayer) <= 35 && !isActive) {
	var i;
	for (i = 0; i < ds_list_size(spawnPointList); i++) {
		var thisCheckpoint = ds_list_find_value(spawnPointList, i)
		with(thisCheckpoint) {
			if (isActive) {
				isActive = false;
			}
		}
	}
	isActive = true;
}


if (shouldSpawn && isActive && !isRespawning) {
	alarm_set(0, room_speed * 3);
	shouldSpawn = false;
	isRespawning = true;
}