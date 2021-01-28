/// @description grounded and gravity
onGround = check_below();

if(!onGround && player != 1){
    ySpeed += gSpeed * god.gameSpeed;
}


if (onGround && place_meeting(x, y,parentBlocker)) {
	var blockDirection = point_direction(x, y, instance_nearest(x, y, parentBlocker).x, instance_nearest(x, y, parentBlocker).y)
	if (blockDirection > 90 && blockDirection < 270) {
		x += 2
	} else {
		x-= 2
	}
}