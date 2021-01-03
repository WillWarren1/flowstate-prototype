/// @description Insert description here
// You can write your code in this editor
var playerObject = instance_place(x, y, oPlayer)
if (playerObject != noone) {
	playerObject.flow +=.25
	instance_destroy();
}