/// @description Created state and variables

//Set the initial state to reference the free script, so players can move around
state = scr_player_state_free;
last_state = state;

//Stop image animations, disable default speed. We'll set the speed later.
image_speed = 0;

//speed variables, we'll set them to their actual amounts later
hsp = 0;
vsp = 0;
//hascontrol allows us to stop player input in the future
hascontrol = true;
//Used for collision
move_distance_remaining = 0;
//used for shadows
z = 0;

sprite_run = spr_player4_anim_strip;
sprite_idle = spr_player4_idle_anim;
sprite_jump = spr_player4_jump_strip;

local_frame = 0;

distance_roll = 128;
distance_bonk = 40;
distance_bonk_height = 12;
bonk_speed = 1.5;

//Get me the tilemap ID, use it for collisions
collision_map = layer_tilemap_get_id(layer_get_id("collidable"));

map_done = false;