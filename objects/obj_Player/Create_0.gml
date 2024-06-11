walkSpeed = 2;
walk_Timer = 0;
localFrame = 0;
targetDummy = noone;
image_angle_ = 0;
menu_open = false;
red_key_var = true;
blue_key_var = true;
yellow_key_var = true;


#region sprites
	sprite_Walk = sRoachBit_Walk;
	sprite_Idle = sRoachBit_idle;
#endregion

#region weapon
	weapon_sprite = spr_Nothing;
	weapon = "";
	ammo = 0;
	shoot_timer = 0;
	weapon_X = x;
	weapon_Y = y;
#endregion

#region	controls
	control = "keyboard";
	last_Direction = 0;
	gamepad_set_axis_deadzone(0, 0.3);
#endregion

if (global.targetX != -1) {
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}


#region not sure to delete
/*
ai_Refresh = 10;
alarm[0] = ai_Refresh;

ai_Circle_Range = 100;
*/
#endregion