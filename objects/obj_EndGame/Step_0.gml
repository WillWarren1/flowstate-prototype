/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,oPlayer)
	{
		instance_destroy(oPlayer);
		instance_destroy(god);
		room_goto(creditScreen)
	}