function PlayerAnimateSprite(){
		
	var _totalFrames = sprite_get_number(sprite_index) / 4;
	image_index = localFrame + round(CARDINAL_DIR * _totalFrames);
	//show_debug_message(CARDINAL_DIR);
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

	if (localFrame >= _totalFrames) {
		animationEnd = true;
		
		localFrame -= _totalFrames;
	} else animationEnd = false;
}    