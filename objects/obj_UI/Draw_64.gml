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



var _UI_health = _playerHealth;
draw_set_alpha(1);
draw_text_transformed(20,50, _UI_health, 1,1, 0 );
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