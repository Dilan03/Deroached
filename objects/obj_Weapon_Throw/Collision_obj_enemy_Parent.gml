/// @description Insert description here


if(other.id.enemy_healt > 1) {	 
	other.id.enemy_healt -= 1;
}else {
	instance_destroy(other.id);// destroy enemy
}

var pickUp = instance_create_layer(x,y, "Instances", obj_Weapon_Pickup);
pickUp.ammo = ammoLeft;
pickUp.sprite_index = sprite_index;
	
instance_destroy();
