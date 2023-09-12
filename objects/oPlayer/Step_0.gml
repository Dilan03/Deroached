keyLeft = keyboard_check(ord("A")) or keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) or keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) or keyboard_check(vk_up);
keyDown = keyboard_check(ord("S")) or keyboard_check(vk_down);
keyActivate = keyboard_check_pressed(vk_space);

inputDirection = point_direction(0,0,keyRight-keyLeft, keyDown-keyUp);
inputMagnitud = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

PlayerStateFree();