// Inherit the parent event
event_inherited();

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
state = ENEMYSTATE.WANDER;

sMove = sSlime;

enemyScript[ENEMYSTATE.WANDER] = SlimeWander;
enemyScript[ENEMYSTATE.CHASE] = SlimeChase;

