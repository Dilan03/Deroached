/// @description Insert description here
// You can write your code in this editor
if (global.playerHealth <= 0) {
	obj_Player.walkSpeed = 0
	obj_Player.sprite_Idle = sRoach_dead
	obj_Player.sprite_Walk = sRoach_dead
	if keyboard_check_pressed(ord("R")) game_restart();
}