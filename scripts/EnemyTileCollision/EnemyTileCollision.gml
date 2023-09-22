function EnemyTileCollision(){
	
	hSpeed = lengthdir_x(inputMagnitud * enemySpeed, inputDirection);
	vSpeed = lengthdir_y(inputMagnitud * enemySpeed, inputDirection);
	
	var _collision = false;
	if (tilemap_get_at_pixel(collisionMap, bbox_left - enemySpeed, bbox_top) or tilemap_get_at_pixel(collisionMap, bbox_left - enemySpeed, bbox_bottom)) {	
		if (sign(hSpeed) == 1) x += enemySpeed;
		hSpeed = 0;
		_collision = true;
	}


	if (tilemap_get_at_pixel(collisionMap, bbox_right + enemySpeed, bbox_top) or tilemap_get_at_pixel(collisionMap, bbox_right + enemySpeed, bbox_bottom)) {	

		if (sign(hSpeed) == 1) x -= enemySpeed;
		hSpeed = 0;
		_collision = true;
	}

	if (tilemap_get_at_pixel(collisionMap, bbox_left, bbox_top - enemySpeed) or tilemap_get_at_pixel(collisionMap, bbox_right, bbox_top - enemySpeed)) {
		if (sign(vSpeed) == 1) y += enemySpeed;
		vSpeed = 0;
		_collision = true;
	}
	
	if (tilemap_get_at_pixel(collisionMap, bbox_left, bbox_bottom + enemySpeed) or tilemap_get_at_pixel(collisionMap, bbox_right, bbox_bottom + enemySpeed)) {
		if (sign(vSpeed) == 1) y -= enemySpeed;
		vSpeed = 0;
		_collision = true;
	}


	return _collision;

}