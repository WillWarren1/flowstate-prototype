/// @description grounded and gravity
onGround = check_below();

if(!onGround){
    ySpeed += gSpeed * god.gameSpeed;
}


