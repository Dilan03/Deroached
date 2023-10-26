/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))) {
	AddItem(objController.myItems, ["Red Jelly", sprJellyRed, 1, Type.Consumable, 15, objJellyRed]);
	instance_destroy(id);
}