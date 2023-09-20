// Inherit the parent event
event_inherited();

if (hasPath) {
	path_start(path, 0.7, path_action_reverse, 0);
} else {
	path_end();
}

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
state = ENEMYSTATE.WANDER;

sMove = sSlime; 

visionDistance = 50;
visionAngle = 10;

enemyScript[ENEMYSTATE.WANDER] = SlimeWander;
enemyScript[ENEMYSTATE.CHASE] = SlimeChase;