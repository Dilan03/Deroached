function EnemyTileCollision(){
	
	var _hSpeed = lengthdir_x(inputMagnitud * enemySpeed, inputDirection);
	var _vSpeed = lengthdir_y(inputMagnitud * enemySpeed, inputDirection);
	
	var left_Top = tilemap_get_at_pixel(collisionMap, bbox_left - enemySpeed, bbox_top);
	var left_Bottom = tilemap_get_at_pixel(collisionMap, bbox_left - enemySpeed, bbox_bottom);
	
	var right_Top = tilemap_get_at_pixel(collisionMap, bbox_right + enemySpeed, bbox_top);
	var right_Bottom = tilemap_get_at_pixel(collisionMap, bbox_right + enemySpeed, bbox_bottom);
	
	var up_Left = tilemap_get_at_pixel(collisionMap, bbox_left, bbox_top - enemySpeed);
	var up_Right = tilemap_get_at_pixel(collisionMap, bbox_right, bbox_top - enemySpeed);
	
	var down_Left = tilemap_get_at_pixel(collisionMap, bbox_left, bbox_bottom + enemySpeed);
	var down_Right = tilemap_get_at_pixel(collisionMap, bbox_right, bbox_bottom + enemySpeed);
	
	
	var _collision = false;
	if (left_Top or left_Bottom) {	
		if (sign(_hSpeed) == 1) x += enemySpeed;
		_hSpeed = 0;
		_collision = true;
	}


	if (right_Top or right_Bottom) {	

		if (sign(_hSpeed) == 1) x -= enemySpeed;
		_hSpeed = 0;
		_collision = true;
	}

	if (up_Left or	up_Right) {
		if (sign(_vSpeed) == 1) y += enemySpeed;
		_vSpeed = 0;
		_collision = true;
	}
	
	if (down_Left or down_Right) {
		if (sign(_vSpeed) == 1) y -= enemySpeed;
		_vSpeed = 0;
		_collision = true;
	}


	return _collision;

}