/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

inputDirection = point_direction(0,0,target_x,target_y);
inputMagnitud = (target_x != 0) || (target_y != 0);
var _distanceToGo = point_distance(x,y, target_x, target_y);		
//image_speed = 1;
dir = point_direction(x,y, target_x,target_y);
var _oldSprite = sprite_index;

if(inputMagnitud != 0) {
	direction = dir;
	sprite_index = sMove;
} else sprite_index = sIdle;

if(_oldSprite != sprite_index ) localFrame = 0; 

PlayerAnimateSprite();	