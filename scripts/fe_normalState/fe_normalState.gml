// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fe_normalState(){
	var moveFlow = .75 > flow ? .75 : flow
	if (moveFlow > 2.3) {
		moveFlow = 2.3
	}
	mSpeed = mSpeedDefault * moveFlow;

	//move left and right
	if(left){
	    xSpeed = approach(xSpeed,-mSpeed,aSpeed * god.gameSpeed);
	}else if(right){
	    xSpeed = approach(xSpeed,mSpeed,aSpeed * god.gameSpeed);
	} else if (up) {
	    ySpeed = approach(xSpeed,-mSpeed,aSpeed * god.gameSpeed);
	} else if (down) {
		ySpeed = approach(xSpeed,mSpeed,aSpeed * god.gameSpeed);
	}

}