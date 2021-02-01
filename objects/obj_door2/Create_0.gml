targetx = x
targety = y

roomnext = level2
returning = room != level3 || false;

if room = level2 || (returning && room == level2)
	{
	targetx = 12
	targety = 400
	roomnext = level3
	}
else
	{
	if room = level3
		{
		targetx = 1350
		targety = 115
		returning = true
		}
	}