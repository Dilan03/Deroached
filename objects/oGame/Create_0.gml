randomize();

global.gamePaused = false;

global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;
global.playerHealthMax = 20;
global.playerHealth = global.playerHealthMax;

global.iCamera = instance_create_layer(0,0,layer, oCamera);
global.iUI = instance_create_layer(0,0, layer, obj_UI);
surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H);

room_goto(ROOM_START);