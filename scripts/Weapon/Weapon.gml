function Weapon(_x_shot_org, _x_shot_ang, _damage, _shot_speed, _shot_friction, _spread, _ammo, _shoot_timer, _muzzle_distance, _muzzle_extraAngle) constructor{
	
	x_shot_org = _x_shot_org
	x_shot_ang = _x_shot_ang
	damage = _damage 
	shot_speed = _shot_speed
	shot_friction = _shot_friction
	spread = _spread
	ammo = _ammo 
	shoot_timer = _shoot_timer 
	muzzle_distance = _muzzle_distance
	muzzle_extraAngle = _muzzle_extraAngle
	
	#region methods
		playerShoot = function(_instance_ToStickTo, _instance_shot, _instance_muzzle) {
	        shotX = _instance_ToStickTo.x + lengthdir_x(x_shot_org, _instance_ToStickTo.direction - x_shot_ang);    
			shotY = _instance_ToStickTo.y;  
		 
			var shot = instance_create_layer(shotX,shotY, "Instances", _instance_shot);
			shot.damage   = damage;
			shot.speed    =	shot_speed;
			shot.friction = shot_friction;
			shot.direction = _instance_ToStickTo.direction + random_range(-spread, spread);		
	
			_instance_ToStickTo.ammo -= 1;
			_instance_ToStickTo.shoot_timer = shoot_timer;
			
			var muzzle = instance_create_layer(shotX,shotY, "Instances", _instance_muzzle);
			muzzle.instance_ToStickTo = _instance_ToStickTo.id;
			muzzle.distance = muzzle_distance;
			muzzle.extraAngle = muzzle_extraAngle;
	    }
	
		enemyShoot = function(_instance_ToStickTo, _instance_shot, _instance_muzzle) {
	        shotX = _instance_ToStickTo.x + lengthdir_x(x_shot_org, _instance_ToStickTo.image_angle_- x_shot_ang);    
			shotY = _instance_ToStickTo.y + lengthdir_y(x_shot_org, _instance_ToStickTo.image_angle_- x_shot_ang);      
		 
			var shot = instance_create_layer(shotX,shotY, "Instances", _instance_shot);
			shot.damage   = damage;
			shot.speed    =	shot_speed;
			shot.friction = shot_friction;
			shot.direction = _instance_ToStickTo.image_angle_ + random_range(-spread, spread);		
	
			_instance_ToStickTo.shoot_timer = shoot_timer;
			
			var muzzle = instance_create_layer(_instance_ToStickTo.x,_instance_ToStickTo.y, "Instances", _instance_muzzle);
			muzzle.instance_ToStickTo = _instance_ToStickTo.id;
			muzzle.distance = muzzle_distance;
			muzzle.extraAngle = muzzle_extraAngle;
	    }
	#endregion 
}