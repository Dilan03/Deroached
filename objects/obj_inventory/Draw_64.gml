/// @description Insert description here
// You can write your code in this editor
event_inherited();
/*draw_sprite_stretched
(
	sInventory,
	0,
	x-6,
	y-6,
	12+rowLength*36,
	12+(((3-1) div rowLength)+1)*36
);
for (var i = 0; i < 3; i += 1)
{
	
    var xx = x + (i mod rowLength) * 36 + 2;
    var yy = y + (i div rowLength) * 36 + 2;
	var hover = (oMouse.inventoryHover == id) && (oMouse.slotHover == i)
    draw_sprite(sSlot,hover,xx,yy)
    if (inventory[i] != -1)
    {
		var alpha = 1.0;
		if (oMouse.inventoryDrag == id) && (oMouse.slotDrag == i) alpha = 0.5;
        draw_set_alpha(alpha);
		draw_sprite(sItems,inventory[i],xx,yy);
		draw_set_alpha(1.0);
    }
}
// Inherit the parent event


