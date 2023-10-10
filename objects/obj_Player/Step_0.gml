/// @description Insert description here
// You can write your code in this editor

image_angle_ = direction;

movePlayer();

// camera
if (keyboard_check(vk_shift)) {
	
	if (!instance_exists(obj_TargetDummy)) {  
		   targetDummy = instance_create_layer(mouse_x, mouse_y, "Instances", obj_TargetDummy);
                 obj_Camera.target = targetDummy;
		}
		var grabCamera_Width  = camera_get_view_width(view_camera[0]);
        var grabCamera_Height = camera_get_view_height(view_camera[0]);
		targetDummy.x = clamp(mouse_x,  x - ((grabCamera_Width/2)  -20) , x + ((grabCamera_Width/2)  -20)   ); 
		targetDummy.y = clamp(mouse_y,  y - ((grabCamera_Height/2) -20) , y + ((grabCamera_Height/2) -20)  );		

     obj_TargetDummy.timer = 5;
}

// fire left mouse button pressed
var fireWeapon = mouse_check_button(mb_left) or gamepad_button_check(0,gp_shoulderr);

if (fireWeapon and weapon_sprite != spr_Nothing and ammo > 0) { 
	
	// run down timer
	shoot_timer--;
	
	if (shoot_timer <= 0) {	
		shootWeapon();
	} // end of
} // end of left mouse button


/// recoil recovery
var amountLerp = 0.2;
weapon_X = lerp (x, weapon_X, amountLerp); 
weapon_Y = lerp (y, weapon_Y, amountLerp); 

// throw/ grab new weapon
throwWeapon();




	
	

	

