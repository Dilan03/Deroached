function throwWeapon(){
	var _throw_Weapon = mouse_check_button_released(mb_right) or gamepad_button_check_released(0,gp_shoulderl);
	if (_throw_Weapon and weapon_sprite != spr_Nothing) { 
	
		_throw_Weapon = instance_create_layer(x,y,"Instances", obj_Weapon_Throw );
		_throw_Weapon.direction = image_angle_;
		_throw_Weapon.speed     = irandom_range(7,10);
		_throw_Weapon.ammoLeft = ammo;
		 
		switch(weapon) {
			case "knife":  _throw_Weapon.sprite_index = spr_Pickup_Knife;       break;  
			case "pistol":   _throw_Weapon.sprite_index = spr_Pickup_Pistol;    break;		 
			case "smg":      _throw_Weapon.sprite_index = spr_Pickup_Smg;       break;	
			case "uzi":      _throw_Weapon.sprite_index = spr_Pickup_Uzi;       break;			  
			case "aka":      _throw_Weapon.sprite_index = spr_Pickup_Aka;       break;	
			case "mg":       _throw_Weapon.sprite_index = spr_Pickup_Mg;       break;			  
			case "shotgun":  _throw_Weapon.sprite_index = spr_Pickup_Shotgun;   break;			  
		}
	
		// reset player weapon and regular sprite
		weapon_sprite = spr_Nothing;
		sprite_index = spr_PlayerWalk;
	    weapon = "";
		ammo = 0;
	}
}