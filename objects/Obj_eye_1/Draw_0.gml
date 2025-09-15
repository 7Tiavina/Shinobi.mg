//--depth--//
if (!place_meeting(x,y,Obj_depth_collision)) depth = -y;

//--sprite & image index --//
var _cs = 16;

if ( state == CHARACTERS_STATES.WALK ) {
	if (move_x < 0) frame_x = 2;
	else if (move_y < 0) frame_x = 1;
	else if (move_y > 0) frame_x = 0;
}

//--Animation--//
if ( floor(frame_y + anim_speed) <= anim_length - 1 ) {
	frame_y += anim_speed;
} else {
	frame_y = 0;
}



//-- Draw self--//
draw_sprite_part(my_sprite, 0, frame_x * _cs, floor(frame_y) * _cs, _cs, _cs, x - x_origin, y - y_origin);