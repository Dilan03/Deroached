instance_create_layer(x,y, "Instances", obj_Effect_Hit );

if(other.id.enemy_healt > 1) {	 
	other.id.enemy_healt -= obj_Control.damage_Shotgun;
}else {
	instance_destroy(other.id);// destroy enemy
}

instance_destroy(); // destroy shot