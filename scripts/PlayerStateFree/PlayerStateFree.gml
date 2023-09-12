// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
	hSpeed = lengthdir_x(inputMagnitud * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitud * speedWalk, inputDirection);
	
	PlayerCollision();

	var _oldSprite = sprite_index;
	if(inputMagnitud != 0) {
		direction = round(inputDirection);
		sprite_index = spriteRun;
	} else sprite_index = spriteIdle;

	if(_oldSprite != sprite_index ) localFrame = 0; 

	PlayerAnimateSprite(); 
	
	// Change state
	//if(keyActivate) {
		//state = PlayerStateRoll;
		//moveDistanceRemaining = distanceRoll;
	//}
}