/// @description Swap Items

var tempGrid = ds_grid_create(1, Item.Height);
//Save the item we're hovering over to temp
ds_grid_set_grid_region(tempGrid, myItems, currentItemSlot, 0, currentItemSlot, Item.Height, 0, 0);
show_debug_message(currentItemSlot)
//Replace item we're hovering over
ds_grid_set_grid_region(myItems, myItems, draggedItemSlot, 0, draggedItemSlot, Item.Height, currentItemSlot, 0);
show_debug_message(draggedItemSlot)
	//show_debug_message("Weapon")
	

ds_grid_set_grid_region(myItems, tempGrid, 0, 0, 0, Item.Height, draggedItemSlot, 0);

//show_debug_message(currentItem.type)
//show_debug_message(currentItemSlot.type)
//Replace item we dragged with item we were just hovering over


ds_grid_destroy(tempGrid);