/// @description Insert description here
// You can write your code in this editor
if place_meeting(x-1,y, obj_Player) or place_meeting(x+1,y, obj_Player) or place_meeting(x,y-1, obj_Player) or place_meeting(x,y+1, obj_Player)
{	
	if(id.doorDef == "red") {
		if( keyboard_check(ord("F")) and obj_Player.red_key) {
			instance_destroy();
		}
		obj_UI.tutorial_text = "F to open"	
	}
}else {
	obj_UI.tutorial_text = ""	
}