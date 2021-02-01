targetx = x
targety = y

roomnext = level1butthefakeone
returning = room != level2 || false;

if room = level1 || (returning && room == level1butthefakeone)
	{
	targetx = 0
	targety = 845
	roomnext = level2
	}
else
	{
	if room = level2
		{
		targetx = 4000
		targety = 215
		returning = true;
		}
	}