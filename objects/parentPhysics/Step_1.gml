/// @description grounded and gravity
onGround = check_below();

if(!onGround && player != 1){
    ySpeed += gSpeed * god.gameSpeed;
}


