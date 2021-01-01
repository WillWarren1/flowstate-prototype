/// @description Insert description here
// You can write your code in this editor



var i;
for (i = 0; i < instance_number(oEnemy); i += 1)
   {
		ds_list_add(enemyList ,instance_find(oEnemy,i));
   }