/// @description Draw Health
var _playerHealth = global.playerHealth;
var _playerHealthMax = global.playerHealthMax;

//_playerHealth -= _playerHealthFrac;

show_debug_message(_playerHealth);
if(_playerHealth = 3) {
	draw_sprite(sRoachBit_idle, 0, 16, 8);
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