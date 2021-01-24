/// @description Insert description here
// You can write your code in this editor
spawnedPlayer = instance_nearest(x,y,oPlayer);
previousPlayer = spawnedPlayer;
shouldSpawn = instance_number(oPlayer) == 0
isActive = false;
if (shouldSpawn && isActive) {
	spawnedPlayer = instance_create_layer(x, y, "Creatures", oPlayer);
}
isRespawning = false;

spawnPointList = ds_list_create();