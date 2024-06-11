/// @description Draw Health
var _playerHealth = global.playerHealth;
//_playerHealth = 90;
var _playerHealthMax = global.playerHealthMax;

//_playerHealth -= _playerHealthFrac;

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


/*
var text_2 = obj_Player.weapon;
draw_set_alpha(1);
draw_text_transformed(20,50, text_2, 1,1, 0 );*/
var text_1 = string(obj_Player.ammo);
draw_set_alpha(1);
draw_text_transformed(295,164, text_1, 0.7,0.7, 0 );
 
if(obj_Player.weapon == "smg") {
	draw_sprite_ext(spr_Pickup_Smg, 0, 290,157, 1.8,1.8,0,-1,1);
}

if(obj_Player.weapon == "uzi") {
	draw_sprite_ext(spr_Pickup_Uzi, 0, 290,157, 1.8,1.8,0,-1,1);
}

if(obj_Player.weapon == "pistol") {
	draw_sprite_ext(spr_Pickup_Pistol, 0, 290,157, 1.8,1.8,0,-1,1);
}

if(obj_Player.weapon == "mg") {
	draw_sprite_ext(spr_Pickup_Mg, 0, 290,157, 1.8,1.8,0,-1,1);
}

if(obj_Player.weapon == "aka") {
	draw_sprite_ext(spr_Pickup_Aka, 0, 290,157, 1.8,1.8,0,-1,1);
}

if(obj_Player.weapon == "shotgun") {
	draw_sprite_ext(spr_Pickup_Shotgun, 0, 290,157, 1.8,1.8,0,-1,1);
}

// keys
if(obj_Player.red_key_var == true) {
	draw_set_alpha(1);
	draw_sprite(red_key, 10, 50, 132);
}

var _UI_health = _playerHealth;
draw_set_alpha(1);
draw_text_transformed(68,128, _UI_health, 0.8,0.8, 0 );

draw_set_alpha(1);
draw_text_transformed(200,50, tutorial_text, 1,1, 0 );
/*
for (var i = 1; i <= _playerHealthMax; i++) {
	var _imageIndex = (i > _playerHealth);
	if( i == _playerHealth+1) {
		_imageIndex += (_playerHealthFrac > 0);
		_imageIndex += (_playerHealthFrac > 0.25);
		_imageIndex += (_playerHealthFrac > 0.5);
	}
	
	draw_sprite(sRoachBit_idle, _imageIndex, 8 +((i-1)*16), 8);
}*/

//draw_sprite(sRoachBit_idle, 0,50 , 50);
//display_set_gui_size(320,180);