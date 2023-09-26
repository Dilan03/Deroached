/// @description Insert description here
// You can write your code in this editor

path_delete(path);
path = path_add();


target_x = oPlayer.x;
target_y = oPlayer.y;


mp_grid_path(oSetupPathway.grid, path, x,y, target_x, target_y, 1);

path_start(path, 0.5, path_action_stop, true);

alarm_set(10,120);