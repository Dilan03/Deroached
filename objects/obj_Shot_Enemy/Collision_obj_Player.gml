
instance_create_layer(x,y, "Instances", obj_Effect_Hit );
global.playerHealth -= obj_Control.smg.damage;
instance_destroy();