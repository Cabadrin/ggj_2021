// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_free() {
	//All of this only happens when I am in a "free" state
	//Set my speed to equal my magnitude and direction, then move me in that direction
	hsp = lengthdir_x(input_magnitude * spd_walk, input_direction);
	vsp = lengthdir_y(input_magnitude * spd_walk, input_direction);

	scr_player_collision();

	//Animation controls - what sprite index we should be using
	var v_old_sprite = sprite_index;
	//If I am moving, set my direction and my sprite to the moving sprite. If not, I am idle.
	if (input_magnitude != 0) 
	{
		//Only set my direction when I have pressed a key / moved
		//Also makes certain we always get a direction, regardless of the input value (what if we had more than 360?)
		direction = input_direction;
		sprite_index = spr_player4_anim_strip;
	
	} else sprite_index = spr_player4_idle_anim;

	//When we start moving again, make sure we start from the beginning of the animation
	if (v_old_sprite != sprite_index) local_frame = 0;

	//Update my image sprite
	scr_player_animate();
}