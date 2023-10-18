/// @description Insert description here
// You can write your code in this editor
var _spd=3;
x += (keyboard_check(vk_right)-keyboard_check(vk_left))*_spd;
y += (keyboard_check(vk_down)-keyboard_check(vk_up))*_spd;

var _border=16;
x=clamp(x,_border,room_width-_border);
y=clamp(y,_border,room_height-_border);

if(menu_open) exit;

//Open DisplayMenu
if(mouse_check_button_pressed(mb_left)) 
{
	var _menu_layer=layer_get_id("DisplayMenu");
	with(_ui_parent)
	{
		ui_element_toggle_active(layer == _menu_layer);
	}
	menu_open=true;
}