/// @description Insert description here
// You can write your code in this editor
if place_meeting(x-2,y, obj_Player) or place_meeting(x+2,y, obj_Player) or place_meeting(x,y-2, obj_Player) or place_meeting(x,y+2, obj_Player)
{	
	if(doorDef == "red" or doorDef == "r_red") {
		if( keyboard_check(ord("F")) and obj_Player.red_key_var) {
			instance_destroy();
		}
		obj_UI.tutorial_text = "F to open"	
	}
	
	if(doorDef == "blue" or doorDef == "r_blue") {
		if( keyboard_check(ord("F")) and obj_Player.blue_key_var) {
			instance_destroy();
		}
	}
	
	if(doorDef == "yellow" or doorDef == "r_yellow") {
		if( keyboard_check(ord("F")) and obj_Player.yellow_key_var) {
			instance_destroy();
		}
		obj_UI.tutorial_text = "F to open"	
	}
	
}else {
	obj_UI.tutorial_text = ""	
}