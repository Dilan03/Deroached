event_inherited();
sprite_whenDead = dead_bigBug;
sprite_NotAggro = bigBug_walk_enemy;
sprite_Aggro    = bigBug_walk_enemy;
sprite_Idle	=	bigBug_idle_enemy;

// what weapon are is he holding
weapon = "aka";

walkSpeed_Aggro_Checking = 2;
walkSpeed_Going_Back     = 0.75;
ai_I_See_you = 3;
state = "idle"
enemy_healt = 12;
ai_I_See_you_Angle = 40;
sightMAX = 100;
attackRange      = floor(sightMAX/3);
attackRangeBreak = sightMAX;
