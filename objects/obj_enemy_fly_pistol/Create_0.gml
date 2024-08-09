event_inherited();
sprite_whenDead = dead_fly;
sprite_NotAggro = fly_walk_enemy;
sprite_Aggro    = fly_walk_enemy;
sprite_Idle	=	fly_idle_enemy;

// what weapon are is he holding
weapon = "pistol";

walkSpeed_Aggro_Checking = 3;
walkSpeed_Going_Back     = 1;
ai_I_See_you = 2;

ai_I_See_you_Angle = 40;
sightMAX = 100;
attackRange      = floor(sightMAX/3);
attackRangeBreak = sightMAX;
