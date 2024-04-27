function movePlayer(){
	#region player input
		var _key_Left = keyboard_check(ord("A")) or keyboard_check(vk_left);
		var _key_Right = keyboard_check(ord("D")) or keyboard_check(vk_right);
		var _key_Up = keyboard_check(ord("W")) or keyboard_check(vk_up);
		var _key_Down = keyboard_check(ord("S")) or keyboard_check(vk_down);

		var _inputDirection = point_direction(0,0,_key_Right-_key_Left, _key_Down-_key_Up);
		var _inputMagnitud = (_key_Right - _key_Left != 0) || (_key_Down - _key_Up != 0);
	
		var _horizontal_Speed = _key_Right - _key_Left;
		var _vertical_Speed   = _key_Down - _key_Up;
	
		var result_h = (_horizontal_Speed) * (walkSpeed);
		var result_v = (_vertical_Speed)   * (walkSpeed);
		show_debug_message(_horizontal_Speed);
	
		if (_key_Left > 0 or _key_Right > 0 or _key_Up == 1 or _key_Down == 1) { control = "keyboard";  }
	
		if (control == "keyboard") {
			direction = point_direction(x,y, mouse_x, mouse_y); 
		}

		
	#endregion 
	
	#region player animation
		var _totalFrames = sprite_get_number(sprite_index) / 4;
		var _oldSprite = sprite_index;
	
		if(_inputMagnitud != 0) {
			sprite_index = sprite_Walk;
		} else sprite_index = sprite_Idle;

		if(_oldSprite != sprite_index ) localFrame = 0; 
	
		image_index = localFrame + round(CARDINAL_DIR * _totalFrames);
		localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

		if (localFrame >= _totalFrames) {
			animationEnd = true;
			localFrame -= _totalFrames;
		} else animationEnd = false;
	#endregion
 
	if ( !place_meeting(x+ result_h, y, obj_Wall )) {
		x += _horizontal_Speed * walkSpeed; 
	}


	if ( !place_meeting(x,y+result_v, obj_Wall )) {
		y += _vertical_Speed   * walkSpeed; 
	}
}