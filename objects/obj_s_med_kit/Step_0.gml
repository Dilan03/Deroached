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
	
if(instance_exists(obj_Player)) && (position_meeting(obj_Player.x, obj_Player.y, id)) {
	
	if(global.playerHealth > 0 and global.playerHealth < 100 ) {
		var _temPlayerHealth = global.playerHealth + 5;
		if( _temPlayerHealth <= 100) {
			global.playerHealth = _temPlayerHealth;
			instance_destroy();
		} 
		show_debug_message(_temPlayerHealth);
	}
}