image_speed = 0;
aggroState = false; // is trigger when attacking and chasing, then enemy carry a weapon
image_angle_ = 0;
localFrame = 0;

#region weapon
	weapon_sprite = spr_Nothing;
	weapon = "";
	alarm[0] = 3; // reset timers after 3 steps
#endregion

#region sprites
	sprite_whenDead = spr_EnemyRed_Dead;
	sprite_NotAggro = spr_EnemyRed_Walk;
	sprite_Aggro    = spr_EnemyRed_Walk_Weapon;
	sprite_Idle	=	sRoackIdle2;
#endregion

#region emote
	emote  = instance_create_layer(x,y-15, layer, obj_Enemy_State_Emote );
	emote.instanceToFollow = id;
#endregion

#region pathfinding
	path_end();
	path = path_add();

	path_started = false;
	patrol_path = path_add();
	path_set_closed(patrol_path, true);

	position_Start_X = x;
	position_Start_Y = y;

	position_Target_X = x;
	position_Target_Y = y;
#endregion

facing = "down";
state = "idle";

walkSpeed_Aggro_Checking = 2;
walkSpeed_Going_Back     = 1;

ai_NothingHere_time = 60;
ai_NothingHere_timer = ai_NothingHere_time;

ai_I_See_you_Angle = 15;
ai_I_See_you = 3;

sightMAX = 100;
attackRange      = floor(sightMAX/3);
attackRangeBreak = sightMAX;

shoot_time  = 30;
shoot_timer = shoot_time;

ai_Refresh = 10;
alarm[1] = ai_Refresh;