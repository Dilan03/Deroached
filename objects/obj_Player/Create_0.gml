/// @description Insert description here
// You can write your code in this editor
walkSpeed = 2;

walk_Timer = 0;

targetDummy = noone;

sprite_Walk = sPlayerWalk;
sprite_Idle = sPlayerIdle;
localFrame = 0;

// weapon
weapon_sprite = spr_Nothing;
weapon = " ";
ammo = 0;

shoot_timer = 0;

// weapon animation
weapon_X = x;
weapon_Y = y;

image_angle_ = 90;


/// input




/// activate Ai of enemies
#region	controls
	control = "keyboard";
	last_Direction = 0;
	gamepad_set_axis_deadzone(0, 0.3);
#endregion
ai_Refresh = 10;
alarm[0] = ai_Refresh;

ai_Circle_Range = 100;

if (global.targetX != -1) {
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}



