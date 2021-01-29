// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_roll() {

	//Move me by the roll / jump speed
	hsp = lengthdir_x(speed_jump, direction);
	vsp = lengthdir_y(speed_jump, direction);

	//Max makes sure it definitely hits 0, doesn't go negative
	move_distance_remaining = max(0 , move_distance_remaining - speed_jump);
	//Note that we collided after the jump is done, so it stops us. We may not actually have hit anything, but we should act like we did.
	var v_collision = scr_player_collision();

	//Update the jump / roll sprite
	//Change me to the jump / roll sprite strip
	sprite_index = spr_player4_jump_strip;
	//Divie me by 4 directions
	var v_totalframes = sprite_get_number(sprite_index) / 4;

	//Start us at the specific frame for our direction, then animate me based on where I stand in move_distance_remaining. Frame increments as move distance remaining decreases.
	//The min at the end is necessary to prevent the formula below reaching 1, which would place it on the first frame of the next section of the strip.
	image_index = (CARDINAL_DIR * v_totalframes) + min(((1 - (move_distance_remaining / distance_roll)) * v_totalframes),v_totalframes - 1);

	//Change state back to the default or next state
	if (move_distance_remaining <= 0) 
	{
		state = scr_player_state_free;
	}
	
	if (v_collision)
	{
	state = scr_player_state_bonk;
	move_distance_remaining = distance_bonk;
	}

}

