/// @description Insert description here
// You can write your code in this editor
var _ui_layer=layer_get_id("UI");
	with(_ui_parent)
	{
		ui_element_toggle_active(layer == _ui_layer);
	}
	with(obj_Player) {
		instance_activate_layer("Enemies");
		menu_open=false;
	}





