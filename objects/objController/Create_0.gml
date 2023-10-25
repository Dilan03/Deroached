/// @description Variables

myItems = ds_grid_create(0, Item.Height);

isShowingMenu = false;
showingDescription = false;
currentItem = undefined;
currentItemSlot = undefined;
sequence = undefined;
menuWidth = 2;
menuHeight = 8;
itemSeperation = 17;
itemScale = 2;
sortType = SortType.Name;

draggedItem = undefined;
draggingItem = false;
draggedItemSlot = undefined;

maxInventorySlots = 18;

itemLocked = false;
lockedItemX = undefined;
lockedItemY = undefined;

AddItem(myItems, ["Small Knife", sprKnife, 1, Type.Weapon, 10, objKnife]);
AddItem(myItems, ["Broad Sword", sprSword, 1, Type.Weapon, 50, objSword]);
AddItem(myItems, ["Blue Jelly", sprJellyBlue, 1, Type.Consumable, 20, objJellyBlue]);
AddItem(myItems, ["Red Jelly", sprJellyRed, 20, Type.Consumable, 15, objJellyRed]);

AddItem(myItems, ["Legendary Crystal Armor", sprCrystalArmor, 1, Type.Armor, 5000, objArmorCrystal]);
AddItem(myItems, ["Small Knife", sprKnife, 1, Type.Weapon, 10, objKnife]);

AddItem(myItems, ["Pretty Teal Bow", sprBowTeal, 1, Type.Armor, 100, objBowTeal]);
AddItem(myItems, ["Mage's Staff", sprStaff, 9, Type.Weapon, 100, objStaff]);
AddItem(myItems, ["Fluffy Cape", sprCape, 2, Type.Armor, 200, objCape]);
//AddItem(myItems, ["Blue Jelly", sprJellyBlue, 2, Type.Consumable, 20, objJellyBlue]);