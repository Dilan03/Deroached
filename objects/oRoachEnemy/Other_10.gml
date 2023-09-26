/// @description chekc 

path_delete(path);
path = path_add();

mp_grid_path(oSetupPathway.grid, path, x, y, position_Target_x, position_Target_y, 1);

path_start(path, walkSpeed_Checking, path_action_stop, true);