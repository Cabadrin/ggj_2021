// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_collision() {
	var v_collision = false;

	//Find out if there is a tile horizontally
	if (tilemap_get_at_pixel(collision_map,x + hsp,y))
	{
		//Mod returns a remainder. How many times does tile size go into the x? Puts us at the very left of the tile.
		x -= x mod TILE_SIZE
		//Move me to the right if I am in the tile, and need to go to the right
		if (sign(hsp) == 1) x += TILE_SIZE - 1;
		//Stop me
		hsp = 0;
		//I had a collision
		v_collision = true;
	}

	//Horizontal move commit
	x += hsp;

	//Find out if there is a tile vertically
	if (tilemap_get_at_pixel(collision_map,x,y + vsp))
	{
		//Mod returns a remainder. How many times does tile size go into the x? Puts us at the very left of the tile.
		y -= y mod TILE_SIZE
		//Move me to the right if I am in the tile, and need to go to the right
		if (sign(vsp) == 1) y += TILE_SIZE - 1;
		//Stop me
		vsp = 0;
		//I had a collision
		v_collision = true;
	}

	//Vertical move commit
	y += vsp;

	return v_collision;
}
