function PlayerCollision(){
		
	hSpeed = lengthdir_x(inputMagnitud * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitud * speedWalk, inputDirection);
	
	var _collision = false;

	if(keyLeft == 1) {
		var left_Top = tilemap_get_at_pixel(collisionMap, bbox_left - speedWalk, bbox_top);
		var left_Bottom = tilemap_get_at_pixel(collisionMap, bbox_left - speedWalk, bbox_bottom);
	
		if(left_Top == 0 and left_Bottom == 0) {
			
			if (left_Top or left_Bottom) {	
				if (sign(hSpeed) == 1) x += speedWalk;
				hSpeed = 0;
				_collision = true;
			}

			var realX = x;
			realX -= speedWalk;
			x = round(realX);
			
		}
	}
	
	if(keyRight == 1) {
		var right_Top = tilemap_get_at_pixel(collisionMap, bbox_right + speedWalk, bbox_top);
		var right_Bottom = tilemap_get_at_pixel(collisionMap, bbox_right + speedWalk, bbox_bottom);
	
		if(right_Top == 0 and right_Bottom == 0) {
			
			if (right_Top or right_Bottom) {	
				if (sign(hSpeed) == 1) x -= speedWalk;
				hSpeed = 0;
				_collision = true;
			}

			var realX = x;
			realX += speedWalk;
			x = round(realX);

		}
	}
	
	if(keyUp == 1) {
		var up_Left = tilemap_get_at_pixel(collisionMap, bbox_left, bbox_top - speedWalk);
		var up_Right = tilemap_get_at_pixel(collisionMap, bbox_right, bbox_top - speedWalk);
	
		if(up_Left == 0 and up_Right == 0) {
			
			if (up_Left or up_Right) {
				if (sign(vSpeed) == 1) y += speedWalk;
				vSpeed = 0;
				_collision = true;
			}
			
			var realY = y;
			realY -= speedWalk;
			y = round(realY);
			
		}
	} 
	
	if(keyDown == 1) {
		var down_Left = tilemap_get_at_pixel(collisionMap, bbox_left, bbox_bottom + speedWalk);
		var down_Right = tilemap_get_at_pixel(collisionMap, bbox_right, bbox_bottom + speedWalk);
	
		if(down_Left == 0 and down_Right == 0) {
			
			if (down_Left or down_Right) {
				if (sign(vSpeed) == 1) y -= speedWalk;
				vSpeed = 0;
				_collision = true;
			}
			
			var realY = y;
			realY += speedWalk;
			y = round(realY);
			
		}
	} 
	
	return _collision;
	
}