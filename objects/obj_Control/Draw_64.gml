/// @description Insert description here
// You can write your code in this editor
/*
var text = "P -> quit game";
draw_text(90,50, text);

var text2 = "space  -> debug off/on";
draw_text(90,70, text2);

*/
/// @description Draw Health
/*
var _playerHealth = global.playerHealth;
var _playerHealthMax = global.playerHealthMax;
var _playerHealthFrac = frac(_playerHealth);

_playerHealth -= _playerHealthFrac;

for (var i = 1; i <= _playerHealthMax; i++) {
	var _imageIndex = (i > _playerHealth);
	if( i == _playerHealth+1) {
		_imageIndex += (_playerHealthFrac > 0);
		_imageIndex += (_playerHealthFrac > 0.25);
		_imageIndex += (_playerHealthFrac > 0.5);
	}
	
	draw_sprite(sRoachBit_idle, _imageIndex, 8 +((i-1)*16), 8);
}

draw_sprite(sRoachBit_idle, 0,50 , 50);
display_set_gui_size(320,180);
*/