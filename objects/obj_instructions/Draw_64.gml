/// @description 
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(fnt_instructions);
var _str="Mouse Wheel to Scale GUI\nClick to Open Menu";
draw_set_color(c_black)
draw_text(x+1,y+1,_str);
draw_set_color(c_white)
draw_text(x,y,_str);