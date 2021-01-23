/// @description Insert description here
// You can write your code in this editor

var i;
for (i = 0; i < instance_number(oSpawnCheckpoint); i++) {
	ds_list_add(spawnPointList, instance_find(oSpawnCheckpoint, i));
}