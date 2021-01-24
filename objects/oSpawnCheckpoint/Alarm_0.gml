/// @description respawn player
// You can write your code in this editor




isRespawning = false;
god.shakeForce = 1;
god.gameSpeed = 1
god.shouldRespawnPlayer = false;
spawnedPlayer = instance_create_layer(x, y, "Creatures", oPlayer);
with(previousPlayer) {
	image_alpha = 0;
	alarm_set(1, room_speed * .5);
}
previousPlayer = spawnedPlayer