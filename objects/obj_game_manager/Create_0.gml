/// @description Core game manager code and global variables
//Always randomize values before we start
randomize();
//Set in macros
surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);