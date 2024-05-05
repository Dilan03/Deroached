/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_Player)) && (position_meeting(obj_Player.x, obj_Player.y, id)) {
	obj_Wall.door = door;
	
	if(obj_Wall.door == "red") {
		instance_destroy(obj_Wall);
	}	
	//show_debug_message(obj_Wall.door)
}