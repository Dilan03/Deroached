/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))) {
	AddItem(objController.myItems, ["Pretty Teal Bow", sprBowTeal, 1, Type.Armor, 100, objBowTeal]);
	instance_destroy(id);
}