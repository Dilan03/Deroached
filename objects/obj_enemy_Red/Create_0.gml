
event_inherited();

// to set variables that are unique for this "type" of enemy

// sprite to read from
sprite_whenDead = spr_EnemyRed_Dead;
sprite_NotAggro = sRoachEnemyIdle;
sprite_Aggro    = sRoachEnemyWalk;


// what weapon are is he holding
weapon = "uzi";

// what values to read from when attacking
attackRange      = 30;
attackRangeBreak = 70;

// how big is the sight angle/cone?
ai_I_See_you_Angle = 30;

// how fast is the enemy walking?
walkSpeed_Aggro_Checking = 2;
walkSpeed_Going_Back     = 0.75;