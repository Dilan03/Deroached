function shootWeapon(){
	weapon_X = x + lengthdir_x(5, direction-180);
	weapon_Y = y + lengthdir_y(5, direction -180);		
		
		// get correct shot/muzzle position
	var shotX = 0;    
	var shotY = 0;  
		// create bullet(s) and muzzle
	switch(weapon) {
		
		case "pistol": {
		 
			shotX = x + lengthdir_x(12, image_angle_-25);    
			shotY = y + lengthdir_y(12, image_angle_-25);  
		
			var shot = instance_create_layer(shotX,shotY, "Instances", obj_Shot_Pistol);
			shot.damage    = obj_Control.damage_Pistol;
			shot.speed     = obj_Control.ShotSpeed_Pistol;
			shot.friction  = obj_Control.friction_Pistol;
			shot.direction = image_angle_ + random_range(-obj_Control.spread_Pistol, obj_Control.spread_Pistol);			
			ammo -= 1; shoot_timer = obj_Control.shoot_timer_Pistol;
			
			var muzzle = instance_create_layer(shotX,shotY, "Instances", obj_Muzzle);
			muzzle.instance_ToStickTo = id;
			muzzle.distance = 11;
			muzzle.extraAngle = 25;	
			
		break; }

		case "smg": {
			var _smg = obj_Control.smg;
				_smg.playerShoot(obj_Player, obj_Shot_Smg, obj_Muzzle);
			
			/*
			shotX = x + lengthdir_x(obj_Control.smg.x_shot_org, direction - obj_Control.smg.x_shot_ang);    
			shotY = y - 20;  
		 
			var shot = instance_create_layer(shotX,shotY, "Instances", obj_Shot);
			shot.damage   = obj_Control.smg.damage;
			shot.speed    = obj_Control.smg.shot_speed;
			shot.friction = obj_Control.smg.shot_friction;
			shot.direction = direction + random_range(-obj_Control.smg.spread, obj_Control.smg.spread);			
			ammo -= 1;  shoot_timer = obj_Control.smg.shoot_timer;
			
			var muzzle = instance_create_layer(shotX,shotY, "Instances", obj_Muzzle);
			muzzle.instance_ToStickTo = id;
			muzzle.distance = obj_Control.smg.muzzle_distance;
			muzzle.extraAngle = obj_Control.smg.muzzle_extraAngle;*/			
				
		break; }


	 case "uzi": {

         shotX = x + lengthdir_x(16, image_angle_-16);    
		 shotY = y + lengthdir_y(16, image_angle_-16);  	
		 
	 	var shot = instance_create_layer(shotX,shotY, "Instances", obj_Shot_Uzi);
		    shot.damage   = obj_Control.damage_Uzi;
		    shot.speed    = obj_Control.ShotSpeed_Uzi;
		    shot.friction = obj_Control.friction_Uzi;
		    shot.direction = image_angle_ + random_range(-obj_Control.spread_Uzi, obj_Control.spread_Uzi);			
			ammo -= 1;  shoot_timer = obj_Control.shoot_timer_Uzi;
			
			var muzzle = instance_create_layer(shotX,shotY, "Instances", obj_Muzzle);
			    muzzle.instance_ToStickTo = id;	
			    muzzle.distance = 16;
				muzzle.extraAngle = 16;						
	      break; }		  


	 case "aka": {
		 
         shotX = x + lengthdir_x(17, image_angle_-32);    
		 shotY = y + lengthdir_y(17, image_angle_-32); 		
		 
	 	var shot = instance_create_layer(shotX,shotY, "Instances", obj_Shot_Aka);
		    shot.damage   = obj_Control.damage_Smg;
		    shot.speed    = obj_Control.ShotSpeed_Smg;
		    shot.friction = obj_Control.friction_Pistol;
		    shot.direction = image_angle_ + random_range(-obj_Control.spread_Aka, obj_Control.spread_Aka);				
			ammo -= 1;  shoot_timer = obj_Control.shoot_timer_Aka;
			
			var muzzle = instance_create_layer(shotX, shotY, "Instances", obj_Muzzle);
			    muzzle.instance_ToStickTo = id;	
			    muzzle.distance = 18;
				muzzle.extraAngle = 15;					
				
	      break; }

	 case "mg": {

         shotX = x + lengthdir_x(16, image_angle_-22);    
		 shotY = y + lengthdir_y(16, image_angle_-22); 
		 
	 	var shot = instance_create_layer(shotX,shotY, "Instances", obj_Shot_Mg);
		    shot.damage   = obj_Control.damage_Mg;
		    shot.speed    = obj_Control.ShotSpeed_Mg;
		    shot.friction = obj_Control.friction_Mg;
		    shot.direction = image_angle_ + random_range(-obj_Control.spread_Mg, obj_Control.spread_Mg);				
			ammo -= 1;  shoot_timer = obj_Control.shoot_timer_Mg;
			
			var muzzle = instance_create_layer(shotX,shotY, "Instances", obj_Muzzle);
			    muzzle.instance_ToStickTo = id;		
			    muzzle.distance = 21;
				muzzle.extraAngle = 15;					
				
	      break; }



			case "shotgun": {

				shotX = x + lengthdir_x(24, image_angle_-20);    
				shotY = y + lengthdir_y(24, image_angle_-20); 
	
				for (var i = 0;  i < 6; i++ ){
				var shot = instance_create_layer(shotX,shotY, "Instances", obj_Shot_Shotgun);
					shot.damage   = obj_Control.damage_Shotgun;
					shot.speed    = obj_Control.ShotSpeed_Shotgun;
					shot.friction = obj_Control.friction_Shotgun;
					shot.direction = image_angle_ + i*obj_Control.spread_Shotgun;				
				}
	
				for (var i2 = 1;  i2 < 6; i2++ ){
				var shot = instance_create_layer(shotX,shotY, "Instances", obj_Shot_Shotgun);
					shot.damage   = obj_Control.damage_Shotgun;
					shot.speed    = obj_Control.ShotSpeed_Shotgun;
					shot.friction = obj_Control.friction_Shotgun;
					shot.direction = image_angle_ - i2*obj_Control.spread_Shotgun;				
				}	
	
				ammo -= 1;  shoot_timer = obj_Control.shoot_timer_Shotgun;
			
				var muzzle = instance_create_layer(shotX,shotY, "Instances", obj_Muzzle);
				muzzle.instance_ToStickTo = id;		
				muzzle.distance = 24;
				muzzle.extraAngle = 20;					
				
				break; 
			}

	   } // end of switch
	   
/*
	smgWeapon = {
		x_shot_org: 14,
		x_shot_ang: 22,
		damage: 1, 
		shot_speed: 9,
		shot_friction: 0.04,
		spread: 22,
		ammo: 60, 
		shoot_timer: 5, 
		muzzle_distance: 14,
		muzzle_extraAngle: 22
	}*/
	
	
}

