/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
state = ENEMYSTATE.WANDER;

sMove = sRoachEnemyWalk;
sIdle = sRoachEnemyIdle;
localFrame = 0;


enemyScript[ENEMYSTATE.WANDER] = RoachWander;
enemyScript[ENEMYSTATE.CHASE] = RoachChase;

target_x = oPlayer.x;
target_y = oPlayer.y;

path = path_add();
alarm[10] = 1;





walkSpeed_Checking = 0.5;
walkSpeed_Aggro = 0.75;