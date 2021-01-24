/// @description respawn player
// You can write your code in this editor




isRespawning = false;
god.shakeForce = 1;
god.shouldRespawnPlayer = false;
spawnedPlayer = instance_create_layer(x, y, "Creatures", oPlayer);
with(spawnedPlayer) {
	instanceIsInvincible = true;
	alarm_set(2, room_speed * 2.5);
}
with(previousPlayer) {
	visible = false;
	alarm_set(1, room_speed * .5);
}
previousPlayer = spawnedPlayer