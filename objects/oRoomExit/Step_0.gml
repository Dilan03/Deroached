if(instance_exists(obj_Player)) && (position_meeting(obj_Player.x, obj_Player.y, id)) {
	
	global.targetRoom = targetRoom;
	global.targetDirection = obj_Player.direction;
	
	if(keyboard_check_pressed(ord("F")) and open_condition) {
		obj_Player.x = targetX;
		obj_Player.y = targetY;
		room_goto(targetRoom);

	}
	
}