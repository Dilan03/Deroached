
instance_create_layer(x,y, "Instances", obj_Effect_Hit );
if(global.playerHealth > 0) {
	global.playerHealth -= obj_Control.damage_Mg;
}
instance_destroy();