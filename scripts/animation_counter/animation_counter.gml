function animation_counter() {
	//count frame duration and change current sprites frame accordingly

	maxFrames = sprite_get_number(sprite) - 1;
	frameDuration = ds_list_find_value(frameData, currentFrame);
	frameCounter += frameSpeed  * god.gameSpeed;

	if(frameCounter == frameDuration){
	    currentFrame += 1  * god.gameSpeed;
	    frameCounter = 0;
	}

	if(currentFrame > maxFrames){
	    frame_reset();
	}



}
