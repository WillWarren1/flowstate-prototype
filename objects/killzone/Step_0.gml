/// @description DEBUG reset game on collision
// You can write your code in this editor
var collideWithPlayerCheck = instance_place(x+32, y, oPlayer);
if(collideWithPlayerCheck != noone){
	game_restart();
}