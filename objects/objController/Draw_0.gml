/// @description Draw The Menu
draw_self();

if (isShowingMenu) {
	//Pause the game
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	//Back of the inventory
	draw_set_alpha(1);
	draw_sprite_ext( sInventario, 0, oCamera.x-100, oCamera.y -80, 1, 1, 0, c_white, 1 );
	//draw_sprite(sprInventoryBackDrop, 0, 0, 0);
	
	//Items
	for(var i = 0; i < ds_grid_width(myItems); ++i) {
		var itemX = oCamera.x - 82+ (i * itemSeperation);
		var itemY = oCamera.y - 63;
		var sprite = myItems[# i, Item.Sprite];
		
		//var string1 = string_concat(i,myItems[# i, Item.Name] );
		//show_debug_message(string1);
		
		//Check for additional rows needed
		if (i >= menuWidth && i < menuWidth * 2) {
			itemX = oCamera.x -82 + ((i - menuWidth) * itemSeperation);
			itemY = oCamera.y - 63 + (itemSeperation);
		}
		if (i >= menuWidth * 2 && i < menuWidth * 3) {
			itemX = oCamera.x -82 +((i - menuWidth * 2) * itemSeperation);
			itemY = oCamera.y -63 +(itemSeperation*2);
		}
		if(i >= menuWidth * 3 && i < menuWidth * 4) {
			itemX = oCamera.x -82 +((i - menuWidth * 3) * itemSeperation);
			itemY = oCamera.y - 63 + (itemSeperation*3);
		}
		if(i >= menuWidth * 4 && i < menuWidth * 5) {
			itemX = oCamera.x -82 + ((i - menuWidth * 4) * itemSeperation);
			itemY = oCamera.y - 63 + (itemSeperation*4);
		}
		if(i >= menuWidth * 5 && i < menuWidth * 6) {
			itemX = oCamera.x -82 + ((i - menuWidth * 5) * itemSeperation);
			itemY = oCamera.y - 63 + (itemSeperation*5);
		}
		if(i >= menuWidth * 6 && i < menuWidth * 7) {
			itemX = oCamera.x -82 + ((i - menuWidth * 6) * itemSeperation);
			itemY = oCamera.y - 63 + (itemSeperation*6);
		}
		if(i >= menuWidth * 7 && i < menuWidth * 8) {
			itemX = oCamera.x -82 + ((i - menuWidth * 7) * itemSeperation);
			itemY = oCamera.y - 63 + (itemSeperation*7);
		}
		
		if(i == 16) {
			itemX = oCamera.x + 15;
			itemY = oCamera.y - 28;
		}
		
		if(i == 17 && myItems[# i, Item.Type] == Type.Weapon) {
			itemX = oCamera.x - 25;
			itemY = oCamera.y + 20;
		}
		
		draw_sprite_ext(sprite, 0, itemX, itemY, 0.9, 0.9, 0, c_white, 1);
		
		//Amount
		draw_set_color(c_blue);
		draw_set_alpha(1);
		draw_set_font(fntSmaller);
		draw_text(itemX - 2, itemY, myItems[# i, Item.Amount]);
		
		//Check if mouse is hovering over an item
		if (point_in_rectangle(mouse_x, mouse_y, itemX - 4, itemY - 4, itemX + 4, itemY + 4)) {
			
			draw_set_alpha(0.25);
			draw_set_color(c_blue);
			draw_rectangle(itemX - 4, itemY - 4, itemX + 4, itemY + 4, false);
			draw_set_alpha(1);
			currentItemSlot = i;
			
			//Draw item info
			 if (instance_exists(myItems[# i, Item.Object]) == false && draggingItem == false && itemLocked == false ) {
				currentItem = instance_create_layer(oCamera.x + 90, oCamera.y + 50, "MenuItems", myItems[# i, Item.Object]);
				currentItem.price = myItems[# i, Item.Price];
				currentItem.type = myItems[# i, Item.Type];
				currentItem.name = myItems[# i, Item.Name];
				currentItem.isInMenu = true;
				
				if (showingDescription ) {
					currentItem.isShowingInfo = true;
				}
			}
			
			if (mouse_check_button(mb_left)) {
				itemTouched = currentItemSlot
				showingDescription = true;
				if (instance_exists(objItemParent) == true) {
					currentItem.isShowingInfo = true;
				}
			}
			//Clicked on an item
			/*
			//Lock Item
			if (mouse_check_button_pressed(mb_right) && itemLocked == false && showingDescription == true) {
				itemLocked = true;
				lockedItemX = itemX;
				lockedItemY = itemY;
			}
			else if (mouse_check_button_pressed(mb_right) && itemLocked == true) {
				itemLocked = false;
			}*/
		}
		
		if (point_in_rectangle(mouse_x, mouse_y, oCamera.x, oCamera.y, oCamera.x + 50, oCamera.y + 50)) {
			if(mouse_check_button_pressed(mb_left)) {
				showingDescription = false;
				instance_destroy(objItemParent);
			}
		} 
		
		
		if (showingDescription) {
			draw_sprite_ext( sprDescription, 0, oCamera.x+100, oCamera.y, 0.3, 0.3, 0, c_white, 1 );
			//sequence = layer_sequence_create("Instances", oCamera.x +30, oCamera.y, sqDescriptionAnimation);
		}
	}
	
	//Draw locked item
	if (itemLocked == true) {
		draw_set_alpha(0.5);
		draw_set_color(c_red);
		draw_rectangle(lockedItemX - 16, lockedItemY - 16, lockedItemX + 16, lockedItemY + 16, false);
		draw_set_alpha(1);
	}
	
	//Dragging System
	if (mouse_check_button(mb_middle)) {
		draggedItem = instance_find(objItemParent, 0);
		draggedItem.x = mouse_x;
		draggedItem.y = mouse_y;
		draggedItem.visible = true;
		draggedItem.image_xscale = itemScale;
		draggedItem.image_yscale = itemScale;
		draggingItem = true;
	}
	if (mouse_check_button_pressed(mb_middle)) {
		draggedItemSlot = currentItemSlot;
	}
	
	if (mouse_check_button_released(mb_middle)) {
		draggedItem.x = -100;
		draggedItem.y = -100;
		draggingItem = false;
		var _draggetType = draggedItem.type;
		var _currentType = currentItem.type;
		
		if (_draggetType == 0 and currentItemSlot == 17) {
			alarm[0] = 1;
		} 
		
		if (_draggetType == 1 and currentItemSlot == 16) {
			show_debug_message("Igual");
			alarm[0] = 1;
		} 
		
	}
	
	//Exit description

	
	//Ensure only 1 item exists at a time
	if (instance_number(objItemParent) > 1) {
		instance_destroy(objItemParent);
	}
	/*
	//Locked Item Slots
	for(var i = maxInventorySlots; i < menuHeight * menuWidth; ++i) {
		var itemX = oCamera.x + (i * itemSeperation);
		var itemY = oCamera.y;
		var sprite = sprLockedIcon;
		
		//Check for additional rows needed
		if (i >= menuWidth && i < menuWidth * 2) {
			itemX = oCamera.x + ((i - menuWidth) * itemSeperation);
			itemY = oCamera.y;
		}
		if (i >= menuWidth * 2 && i < menuWidth * 3) {
			itemX = oCamera.x + ((i - menuWidth * 2) * itemSeperation);
			itemY = oCamera.y;
		}
		if(i >= 18 && i < menuWidth * 4) {
			itemX = oCamera.x+ ((i - menuWidth * 3) * itemSeperation);
			itemY = oCamera.y;
		}
		if(i >= 24 && i < menuWidth * 5) {
			itemX = oCamera.x + ((i - menuWidth * 4) * itemSeperation);
			itemY = oCamera.y ;
		}
		if(i >= 30 && i < menuWidth * 6) {
			itemX = oCamera.x + ((i - menuWidth * 5) * itemSeperation);
			itemY = oCamera.y;
		}
		if(i >= 36 && i < menuWidth * 7) {
			itemX = oCamera.x + ((i - menuWidth * 6) * itemSeperation);
			itemY = oCamera.y;
		}
		if(i >= 42 && i < menuWidth * 8) {
			itemX =oCamera.x + ((i - menuWidth * 7) * itemSeperation);
			itemY = oCamera.y;
		}
		
		draw_sprite_ext(sprite, 0, itemX, itemY, 0.3, 0.3, 0, c_white, 1);
	}*/
	
	//Front of the inventory
	//draw_sprite_ext( sprInventoryFront, 0,oCamera.x-50, oCamera.y+7 , 0.4, 0.4, 0, c_white, 1 );
	//draw_sprite(sprInventoryFront, 0, CameraX() + 175, CameraMiddleY() + 20);
	
	//Sort Type
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(fntSmaller);
	if (sortType == SortType.Name) {
		draw_text(oCamera.x, oCamera.y, "Sorting by Name");
	}
	if (sortType == SortType.Amount) {
		draw_text(CameraX() + 75, CameraY() + 425, "Sorting by Amount");
	}
	if (sortType == SortType.Price) {
		draw_text(CameraX() + 75, CameraY() + 425, "Sorting by Price");
	}
	if (sortType == SortType.Type) {
		draw_text(CameraX() + 75, CameraY() + 425, "Sorting by Type");
	}
	
	//Press Button
	if (point_in_rectangle(mouse_x, mouse_y, CameraX() + 440, CameraY() + 435, CameraX() + 520, CameraY() + 470) == true && mouse_check_button_pressed(mb_left)) {
		show_message("Button pressed.");
	}
}









