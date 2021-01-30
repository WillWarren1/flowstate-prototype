distance2dinox = oPlayer.x - x
distance2dinoy = oPlayer.y - y
if distance2dinox > -100 && distance2dinox < 100
	{
	if distance2dinoy > -100 && distance2dinoy < 100
		{
		active = true
		}
	else
		{
		active = false
		}
	}
else
	{
	active = false
	}