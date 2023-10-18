if(instance_exists(obj_Player)) && (position_meeting(obj_Player.x, obj_Player.y, id)) {
	
	global.targetRoom = targetRoom;
	global.targetX = targetX;
	global.targetY = targetY;
	global.targetDirection = obj_Player.direction;
	
	if(keyboard_check_pressed(ord("F")) and open_condition) {
		room_goto(targetRoom);
		instance_destroy();
	}
	
}