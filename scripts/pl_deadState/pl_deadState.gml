// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pl_deadState(){
	//slow horizontal speed
	if(onGround){
	    xSpeed = approach(xSpeed,0,0.1 * god.gameSpeed);
	}else{
	    xSpeed = approach(xSpeed,0,0.01 * god.gameSpeed);
	}
}