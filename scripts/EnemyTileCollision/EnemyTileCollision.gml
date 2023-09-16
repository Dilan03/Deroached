function EnemyTileCollision(){
	var _collision = false;
	if (tilemap_get_at_pixel(collisionMap,x + hSpeed,y))
	{	
		var _realx = x;
		_realx -= _realx mod TILE_SIZE;
		x = _realx;
		if (sign(hSpeed) == 1) x += TILE_SIZE - 1;
		hSpeed = 0;
		_collision = true;
	}
	var _realx = x;
	_realx += hSpeed;
	x = _realx;

	if (tilemap_get_at_pixel(collisionMap,x,y + vSpeed))
	{
		var _realy = y;
		_realy -= _realy mod TILE_SIZE;
		y = _realy;
		if (sign(vSpeed) == 1) y += TILE_SIZE - 1;
		vSpeed = 0;
		_collision = true;
	}
	var _realy = y;
	_realy += vSpeed;
	y = _realy;

	return _collision;

}