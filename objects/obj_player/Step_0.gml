/// @description Movement controls 

//Where is the player going?
if(hascontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_up = keyboard_check_pressed(vk_up) or keyboard_check(ord("W"));
	key_down = keyboard_check_pressed(vk_down) or keyboard_check(ord("S"));
	key_activate = keyboard_check_pressed(vk_space);
	key_attack = keyboard_check_pressed(vk_shift);
	key_item = keyboard_check_pressed(vk_alt);
}
else
{
	key_left = 0;
	key_right = 0;
	key_up = 0;
	key_down = 0;
	key_activate = 0;
	key_attack = 0;
	key_item = 0;
}

//Let's get the direction angle we want to move in
input_direction = point_direction(0,0,key_right - key_left,key_down - key_up)
//If it equals zero, it cancels each other out to don't move. If it isn't 0, we do want to move.
input_magnitude = ( key_right - key_left != 0) || (key_down - key_up != 0)