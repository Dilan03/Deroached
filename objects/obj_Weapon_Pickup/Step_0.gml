/// @description Insert description here
// You can write your code in this editor


//hover
if ( time < duration) { 
	
	hover = ease_in_and_out(time, start, dest - start, duration);
	time++;
	}
else { 
	
	var tempStart = start;
	start = dest;
	dest = tempStart;
	time = 0;
}
/*
with(obj_Weapon_Pickup) {
	if(instance_exists(obj_Player)) && (position_meeting(obj_Player.x, obj_Player.y, id)) {
		obj_Control.pickupVis = true;
	} else {
		obj_Control.pickupVis = false;	
	}
}*/