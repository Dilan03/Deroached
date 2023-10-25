/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

if(mouse_check_button_pressed(mb_left) and position_meeting(mouse_gui_x,mouse_gui_y,id)) {
	event_user(1)
}

if(mouse_check_button_released(mb_left)) {
	draged = false;
	x = mouse_x + xx;
	y = mouse_y  +yy;
}

if(draged == false) {
	exit;
}else {
	x = mouse_x + xx;
	y = mouse_y  +yy;
}
