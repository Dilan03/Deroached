/// @description Insert description here
// You can write your code in this editor

debug = false;
UIDraw = true;
menu_open=false;
alarm[0] = 1;
//global.iUI = instance_create_layer(0,0, layer, obj_UI);
//Weapon(_x_shot_org, _x_shot_ang, _damage, _shot_speed, _shot_friction, _spread, _ammo, _shoot_timer, _muzzle_distance, _muzzle_extraAngle)

//pistol = new Weapon(_x_shot_org, _x_shot_ang,1, 6, _shot_friction, _spread, _ammo, _shoot_timer, _muzzle_distance, _muzzle_extraAngle);
var _smg_struct = {
	x_shot_org: 14,
	x_shot_ang: 22,
	damage: 1, 
	shot_speed: 9,
	shot_friction: 0.04,
	spread: 22,
	ammo: 70, 
	shoot_timer: 5, 
	muzzle_distance: 14,
	muzzle_extraAngle: 22
}
smg = new Weapon(	_smg_struct.x_shot_org,
					_smg_struct.x_shot_ang, 
					_smg_struct.damage, 
					_smg_struct.shot_speed, 
					_smg_struct.shot_friction, 
					_smg_struct.spread, 
					_smg_struct.ammo, 
					_smg_struct.shoot_timer, 
					_smg_struct.muzzle_distance,
					_smg_struct.muzzle_extraAngle);
//uzi = new Weapon(_x_shot_org, _x_shot_ang, 1, 9, _shot_friction, _spread, _ammo, _shoot_timer, _muzzle_distance, _muzzle_extraAngle);
//aka = new Weapon(_x_shot_org, _x_shot_ang, 1, 7, _shot_friction, _spread, _ammo, _shoot_timer, _muzzle_distance, _muzzle_extraAngle);
//mg = new Weapon(_x_shot_org, _x_shot_ang, 1, 7, _shot_friction, _spread, _ammo, _shoot_timer, _muzzle_distance, _muzzle_extraAngle);
// values of weapons
damage_Knife = 1;
damage_Pistol = 2;
damage_Smg = 1;
damage_Uzi = 1;
damage_Aka = 1;
damage_Mg = 1;
damage_Shotgun = 1;

ShotSpeed_Pistol = 6;
ShotSpeed_Smg = 9;
ShotSpeed_Uzi = 9;
ShotSpeed_Aka = 7;
ShotSpeed_Mg = 5;
ShotSpeed_Shotgun = 10;

friction_Pistol = 0.04;
friction_Smg = 0.04;
friction_Uzi = 0.04;
friction_Aka = 0.04;
friction_Mg = 0.02;
friction_Shotgun = 0.2;

shoot_timer_Pistol = 35;
shoot_timer_Smg = 5;
shoot_timer_Uzi = 4;
shoot_timer_Aka = 10;
shoot_timer_Mg  = 3;
shoot_timer_Shotgun = 50;

ammo_Pistol = 12;
ammo_Smg = 55;
ammo_Uzi = 80;
ammo_Aka = 40;
ammo_Mg  = 140;
ammo_Shotgun = 2;

spread_Pistol = 3;
spread_Smg = 22;
spread_Uzi = 25;
spread_Aka = 15;
spread_Mg  = 15;
spread_Shotgun =8;
























