event_inherited();
sprite_whenDead = spr_EnemyWhite_Dead;
sprite_NotAggro = fly_walk_enemy;
sprite_Aggro    = fly_walk_enemy;
spirte_Idle	=	fly_idle_enemy;
// what weapon are is he holding
weapon = "smg";

walkSpeed_Aggro_Checking = 2;
walkSpeed_Going_Back     = 0.75;
ai_I_See_you = 3;
state = "idle"

ai_I_See_you_Angle = 40;
sightMAX = 100;
attackRange      = floor(sightMAX/3);
attackRangeBreak = sightMAX;
