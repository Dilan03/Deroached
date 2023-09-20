state = PlayerStateFree;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0; 
speedWalk = 1;
speedRoll = 3;
distanceRoll = 52;     

//spriteRoll = sPlayeRoll;
spriteRun = sPlayerWalk;
spriteIdle = sPlayerIdle;
localFrame = 0;

if (global.targetX != -1) {
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}
