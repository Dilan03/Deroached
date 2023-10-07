/// @description Insert description here
var _list = ds_list_create();
var _num = collision_circle_list(x, y, sightMAX, obj_Player, false, true, _list, false);

show_debug_message(_num)
if _num > 0 {
	for (var i = 0; i < _num; ++i;) {
		var sight_line = collision_line(_list[| i].x, _list[| i].y, x,y, obj_Wall, 0,0);
		
			// is there a wall blocking the sight? no -> have a delay on activating the ai
		if (sight_line == noone){ 
			
			// get perfect line of sight			
			var get_perfectLineDirection = 	point_direction(x, y, _list[| i].x, _list[| i].y);	
			
			// check if enemy's cone of sight is in the perfect line of sighst			
			var angleDiff = abs(angle_difference(image_angle_ ,get_perfectLineDirection ));

			if (angleDiff <= ai_I_See_you_Angle){
					ai_I_See_you -= 1; }
						
		} else { 
			ai_I_See_you = 3; 

		}
				// is the enemy seeing the player for a second or longer? activate his ai!
		if (ai_I_See_you <= 0){
   
			     // new	 
			 if (state == "idle" || state == "patrolling") {
				state = "check out";
	
				position_Target_X = _list[| i].x;
				position_Target_Y = _list[| i].y;

			}

			if ( distance_to_object(_list[| i]) < attackRange  and state != "attack range"){

				   // get rid of path if exists
				if (path_exists(path)) {  path_delete(path);    }

			       // put in attack state
				state = "attack range";
				emote.sprite_index = spr_Emote_Enemy_State_Attacking;

			}
		}
	}
}
		// there is an ememy, is he seeing us?			
ds_list_destroy(_list);

// refresh
alarm[1] = ai_Refresh;