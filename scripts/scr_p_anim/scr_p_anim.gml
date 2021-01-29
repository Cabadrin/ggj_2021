// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_animate() {
	// @desc set the player's sprite based on their direction
	// @arg mode sets the transition mode 
	// @arg target sets the target room for GOTO

	//Get however many frames the image has and divide by 4
	var v_totalframes = sprite_get_number(sprite_index) / 4;

	//Take our local frame (whatever we currently are on), then use the direction and total num of frames to tell me what part of the strip I should be using
	//Example: local is 3, add in 1 for north, 6 for total frames, we get sprite 9.
	image_index = local_frame + (CARDINAL_DIR * v_totalframes);
	//Example of below: sprite speed is 10 per sec, so local_frame = 10/60 or 0.18 per step.
	local_frame += sprite_get_speed(sprite_index) / FRAME_RATE;

	//if I would go over the portion of the strip, let's not do that
	if (local_frame >= v_totalframes)
	{
		//The animation is over
		animation_end = true;
		//Reset the frame to the start of the section
		local_frame -= v_totalframes;
		//If we need to run it again, we will based on player input
	} else animation_end = false;
}
