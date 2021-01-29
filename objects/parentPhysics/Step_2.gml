/// @description collision
var h, v;

// Handle sub-pixel movement
hCounter += xSpeed;
vCounter += ySpeed;
h = round(hCounter);
v = round(vCounter);
hCounter -= h;
vCounter -= v;

repeat(abs(v)){
    if(ySpeed <= 0){
        if(place_meeting(x,y+sign(v),parentBlocker)){
            y_collide();
            break;
        }else{
            y += sign(v) * god.gameSpeed;
        }
    }else if (check_below()){
        y_collide();
        break;
    }else{
        y += sign(v) * god.gameSpeed;
    }
}

repeat(abs(h)) {        
    if(!place_meeting(x+sign(h),y,parentBlocker)){
        x += sign(h) * god.gameSpeed;
    }else{
        x_collide();
        break;
    }
}


if (onGround && place_meeting(x, y,parentBlocker)) {
	var blockDirection = point_direction(x, y, instance_nearest(x, y, parentBlocker).x, instance_nearest(x, y, parentBlocker).y)
	if (blockDirection > 90 && blockDirection < 270) {
		x += 2 + xSpeed
	} else {
		x-= 2 - xSpeed
	}
}