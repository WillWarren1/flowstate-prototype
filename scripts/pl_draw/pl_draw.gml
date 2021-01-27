function pl_draw() {
	//draw sprites. body is drawn first and the weapons are drawn over the body
	//body
	if (player != 0) {
		draw_sprite_ext(sprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_white,1);
	}
	//weapon
	draw_sprite_ext(weaponSprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_white,1);

	if (flow > 1.5) {
		draw_sprite(sprFlowCrown, -1, x-12, y-40)
	}


}
