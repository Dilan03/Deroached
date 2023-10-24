#macro INVENTORY_SLOTS 20
rowLength = choose(3,4,5,6);
inventory = array_create(INVENTORY_SLOTS,-1);
randomize();
repeat(irandom(INVENTORY_SLOTS)) inventory[irandom(INVENTORY_SLOTS)] = choose(-1,0,1);