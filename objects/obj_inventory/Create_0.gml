/// @description Insert description here
// You can write your code in this editor





rowLength = choose(3,4,5,6);
inventory = array_create(3,-1);
randomize();
repeat(irandom(3)) inventory[irandom(3)] = choose(-1,0,1);

// Inherit the parent event
event_inherited();
//inactive_offset=[0,-200];

