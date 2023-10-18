/// @description Snap Camera
if(!instance_exists(obj_player_UI)) exit;

var _x = clamp(obj_player_UI.x-current_width/2,0,room_width-current_width);
var _y = clamp(obj_player_UI.y-current_height/2,0,room_height-current_height);
camera_set_view_pos(cam,_x,_y);
										