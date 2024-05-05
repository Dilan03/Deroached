

image_angle += spin; 

if (speed <= 0.01) { 
	
	var pickUp = instance_create_layer(x,y, "Instances", obj_Weapon_Pickup);
	pickUp.ammo = ammoLeft;
	pickUp.sprite_index = sprite_index;
	
	instance_destroy();
	
}

if (place_meeting(x, y, obj_Wall )) {
	speed = 0; 
}

if (place_meeting(x, y, obj_Weapon_Pickup )) {
	speed = 0; 
}