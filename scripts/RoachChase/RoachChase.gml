// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RoachChase(){
		

	
	if (instance_exists(target)) {
		
		xTo = target.x;
		yTo = target.y;

		inputDirection = point_direction(0,0,xTo, yTo);
		inputMagnitud = (xTo != 0) || (yTo != 0);
			
		//var _oldSprite = sprite_index;

		
		var _distanceToGo = point_distance(x,y, xTo, yTo);		
		//image_speed = 1;
		dir = point_direction(x,y, xTo, yTo);
		
		if(inputMagnitud != 0) {
			direction = dir;
			sprite_index = sMove;
		} 
		
		//show_debug_message(CARDINAL_DIR);
		PlayerAnimateSprite();
		//EnemyTileCollision();
		//mp_potential_step(xTo,yTo,1,1);
		mp_potential_step_object(xTo,yTo,enemySpeed,obj_Wall);
		EnemyTileCollision();
		//show_debug_message(dir);
		/*
		if(_distanceToGo > enemySpeed) {
			hSpeed = lengthdir_x(enemySpeed, dir);
			vSpeed = lengthdir_y(enemySpeed, dir);
		} else {
			hSpeed = lengthdir_x(_distanceToGo, dir);
			vSpeed = lengthdir_y(_distanceToGo, dir);
		}*/
		
		//if(hSpeed != 0) image_xscale = sign(hSpeed);
		
		
	}
}