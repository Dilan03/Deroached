/// @description Patrolling




// use the mp grid, make a path, ride on it

patrol_path  = path_add();

mp_grid_path(obj_SetupPathway.grid, patrol_path , position_Start_X,position_Start_Y,250, 190, 0 );
path_add_point(patrol_path, 330, 190, 100);
// ride on path
path_start(patrol_path ,0.8, path_action_reverse, true);

