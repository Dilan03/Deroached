/// @description Draw Health
var _playerHealth = global.playerHealth;
//_playerHealth = 90;
var _playerHealthMax = global.playerHealthMax;

//_playerHealth -= _playerHealthFrac;

if (room != rCredits) {
	//draw_sprite_ext(sMouse_pick_up, 0, 285, 120, 0.45,0.45,0,-1,1);
	//show_debug_message(_playerHealth);
	if(_playerHealth <= 100 and _playerHealth >= 90) {
		draw_set_alpha(1);
		draw_sprite(sHealth_faces, 0, 0, 132);
	} 

	if(_playerHealth <= 89 and _playerHealth >= 80) {
		draw_set_alpha(1);
		draw_sprite(sHealth_faces, 1, 0, 132);
	} 

	if(_playerHealth <= 79 and _playerHealth >= 70) {
		draw_set_alpha(1);
		draw_sprite(sHealth_faces, 2, 0, 132);
	} 

	if(_playerHealth <= 69 and _playerHealth >= 60) {
		draw_set_alpha(1);
		draw_sprite(sHealth_faces, 3, 0, 132);
	} 

	if(_playerHealth <= 59 and _playerHealth >= 50) {
		draw_set_alpha(1);
		draw_sprite(sHealth_faces, 4, 0, 132);
	} 

	if(_playerHealth <= 49 and _playerHealth >= 40) {
		draw_set_alpha(1);
		draw_sprite(sHealth_faces, 5, 0, 132);
	} 

	if(_playerHealth <= 39 and _playerHealth >= 30) {
		draw_set_alpha(1);
		draw_sprite(sHealth_faces, 6, 0, 132);
	} 

	if(_playerHealth <= 29 and _playerHealth >= 20) {
		draw_set_alpha(1);
		draw_sprite(sHealth_faces, 7, 0, 132);
	} 

	if(_playerHealth <= 19 and _playerHealth >= 10) {
		draw_set_alpha(1);
		draw_sprite(sHealth_faces, 8, 0, 132);
	} 

	if(_playerHealth <= 9 and _playerHealth >= 1) {
		draw_set_alpha(1);
		draw_sprite(sHealth_faces, 9, 0, 132);
	} 

	if(_playerHealth <= 0) {
		draw_set_alpha(1);
		draw_sprite(sHealth_faces, 10, 0, 132);
	} 

		//draw_set_halign(fa_center);

	draw_sprite_ext(sMouse_pick_up, 0, 290, 114, 0.3,0.3,0,-1,1);
	draw_sprite_ext(sF_open, 0, 290, 102, 0.3,0.3,0,-1,1);
	draw_sprite_ext(sF_pick_up, 0, 290, 90, 0.3,0.3,0,-1,1);
	/*
	var text_2 = obj_Player.weapon;
	draw_set_alpha(1);
	draw_text_transformed(20,50, text_2, 1,1, 0 );*/


 
	if(obj_Player.weapon == "") {
		draw_sprite_ext(spr_hand, 0, 290,147, 1.3,1.3,0,-1,1);
	}else {
		var text_1 = string(obj_Player.ammo);
		draw_set_alpha(1);
		draw_text_transformed(295,164, text_1, 0.7,0.7, 0 );
	}
 
	if(obj_Player.weapon == "smg") {
		draw_sprite_ext(spr_Pickup_Smg, 0, 290,157, 1.8,1.8,0,-1,1);
		draw_sprite_ext(sMouse_throw, 0, 290, 126, 0.3,0.3,0,-1,1);
	}

	if(obj_Player.weapon == "uzi") {
		draw_sprite_ext(spr_Pickup_Uzi, 0, 290,157, 1.8,1.8,0,-1,1);
		draw_sprite_ext(sMouse_throw, 0, 290, 126, 0.3,0.3,0,-1,1);
	}
	if(obj_Player.weapon == "pistol") {
		draw_sprite_ext(spr_Pickup_Pistol, 0, 290,157, 1.8,1.8,0,-1,1);
		draw_sprite_ext(sMouse_throw, 0, 290, 126, 0.3,0.3,0,-1,1);
	}

	if(obj_Player.weapon == "mg") {
		draw_sprite_ext(spr_Pickup_Mg, 0, 290,157, 1.8,1.8,0,-1,1);
		draw_sprite_ext(sMouse_throw, 0, 290, 126, 0.3,0.3,0,-1,1);
	}

	if(obj_Player.weapon == "aka") {
		draw_sprite_ext(spr_Pickup_Aka, 0, 290,157, 1.8,1.8,0,-1,1);
		draw_sprite_ext(sMouse_throw, 0, 290, 126, 0.3,0.3,0,-1,1);
	}

	if(obj_Player.weapon == "shotgun") {
		draw_sprite_ext(spr_Pickup_Shotgun, 0, 290,157, 1.8,1.8,0,-1,1);
		draw_sprite_ext(sMouse_throw, 0, 290, 126, 0.3,0.3,0,-1,1);
	}

	// keys
	if(obj_Player.red_key_var == true) {
		draw_set_alpha(1);
		draw_sprite(red_key, 10, 2, 116);
	} else {
		draw_set_alpha(0.3);
		draw_sprite(red_key, 10, 2, 116);
	}

	if(obj_Player.blue_key_var == true) {
		draw_set_alpha(1);
		draw_sprite(blue_key, 10, 14, 116);
	} else {
		draw_set_alpha(0.3);
		draw_sprite(blue_key, 10, 14, 116);
	}

	if(obj_Player.yellow_key_var == true) {
		draw_set_alpha(1);
		draw_sprite(yellow_key, 10, 26, 116);
	} else {
		draw_set_alpha(0.3);
		draw_sprite(yellow_key, 10, 26, 116);
	}

	var _UI_health = _playerHealth;
	draw_set_alpha(1);
	draw_text_transformed(68,128, _UI_health, 0.8,0.8, 0 );

	//draw_set_alpha(1);
	//draw_text_transformed(200,50, tutorial_text, 1,1, 0 );

}
if (global.playerHealth <= 0) {
	draw_sprite_ext(sDark_screen, 0, 0, 0, 10, 10, 0,-1, 0.5)
	draw_set_alpha(1);
	draw_sprite(sDeathscreen, 0 , 125, 50)
}