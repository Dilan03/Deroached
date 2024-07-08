/// @description Patrolling




// use the mp grid, make a path, ride on it

patrol_path  = path_add();

mp_grid_path(obj_SetupPathway.grid, patrol_path , position_Start_X,position_Start_Y, path2_point_x, path2_point_y, 0);
if(hasThirdPoint) {
	path_add_point(patrol_path, path3_point_x, variable_name, 80);
}
// ride on path
path_start(patrol_path ,0.8, path_action_reverse, true);

