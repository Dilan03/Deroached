/// @description Insert description here
// You can write your code in this editor
if (!state == VisualState.inactive) exit;

draw_set_alpha(image_alpha*.5);
draw_set_color(c_black);
draw_rectangle(0,0,display_get_gui_width(), display_get_gui_height(),false);
draw_set_alpha(1);
