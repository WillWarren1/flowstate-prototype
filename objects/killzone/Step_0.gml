/// @description DEBUG reset game on collision
// You can write your code in this editor
var collideWithEnemyCheck = instance_place(x+32, y, oEnemy);
if(collideWithEnemyCheck != noone){
	game_restart();
}