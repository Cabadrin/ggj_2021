// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_macros() {
//Set frame rate outside of GMS settings
#macro FRAME_RATE 60
//Can be changed later
#macro TILE_SIZE 32
//Rather than write out the rounding fpr the four cardinal directions every time, let's keep it as a macro
//Useful when defining which sprite index to use
#macro CARDINAL_DIR round(direction/90)
//Set the starting room here
#macro ROOM_START room_
//Game res settings on start
#macro RESOLUTION_W 1280
#macro RESOLUTION_H 720

}