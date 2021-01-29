/// @description Update camera

//What's the destination of our camera?
if (instance_exists(follow))
{
	x_to = follow.x;
	y_to = follow.y;
}

//Now update the camera's position based on the destination
x += (x_to - x) / 15;
y += (y_to - y) / 15;

//Keep the camera in the room
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);


//View pos is the top-left of the rectangle, so this tells i=us to move it to the middle.
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);