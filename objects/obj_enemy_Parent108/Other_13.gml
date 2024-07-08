/// @description override shoot method

if (path_exists(path)) {  path_delete(path);    }
path = path_add();
mp_grid_path(obj_SetupPathway.grid, path, x,y,position_Start_X, 320, 1 );

	// ride on path
path_start(path,1, path_action_stop, true);


