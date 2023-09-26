function RoachWander(){

	/*
	if((x==xTo) && (y==yTo)) || (timePassed > enemyWanderDistance / enemySpeed) {
		hSpeed = 0;
		vSpeed = 0;
		

		
		if(++wait >= waitDuration) {
			wait = 0;
			timePassed = 0; 
			dir = point_direction(x, y, xstart, ystart) + irandom_range(-45,45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir);
		}
	
	} else {
		timePassed++;
		
		
		var _distanceToGo = point_distance(x, y, xTo, yTo);
		var _speedThisFrame = enemySpeed;
		if ( _distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo;
		//image_speed = 1;
		dir = point_direction(x,y,xTo, yTo);
		//show_debug_message(dir);
		inputDirection = point_direction(0,0,xTo, yTo);
		inputMagnitud = (xTo != 0) || (yTo != 0);
			
		
		if(inputMagnitud != 0) {
			direction = dir;
			sprite_index = sMove;
		} 

		//if(_oldSprite != sprite_index ) localFrame = 0; 
		
		PlayerAnimateSprite()
		hSpeed = lengthdir_x(_speedThisFrame, dir);
		vSpeed = lengthdir_y(_speedThisFrame, dir);
		//if (hSpeed != 0) image_xscale = sign(hSpeed);
		
		EnemyTileCollision();
		
	}*/
	
	//Check for aggro
	/*
	if (++aggroCheck >= aggroCkeckDuration) {
		aggroCheck = 0;
		
		if(instance_exists(oPlayer)) && ((point_distance(x, y, oPlayer.x-14, oPlayer.y - 35) <= enemyAggroRadius) || (point_distance(x, y, oPlayer.x+14, oPlayer.y ) <= enemyAggroRadius)){
			state = ENEMYSTATE.CHASE;
			target = oPlayer;
			show_debug_message_ext("{0} - {1}", [dtan(10)*300, "First item"]);
			path_end();
		}
	}*/
}