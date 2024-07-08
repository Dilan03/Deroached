event_inherited();
sprite_whenDead = spr_EnemyWhite_Dead;
sprite_NotAggro = sPlayer_bit_walk;
sprite_Aggro    = sPlayer_bit_walk;
sprite_Idle	=	sPlayer_bit_idle;

// what weapon are is he holding
weapon = "smg";

walkSpeed_Aggro_Checking = 2;
walkSpeed_Going_Back     = 0.75;
ai_I_See_you = 3;
state = "idle"
enemy_healt = 50;
ai_I_See_you_Angle = 40;
sightMAX = 100;
attackRange      = floor(sightMAX/3);
attackRangeBreak = sightMAX;
