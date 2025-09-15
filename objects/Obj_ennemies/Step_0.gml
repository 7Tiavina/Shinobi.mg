//----WALK STATE ----//
if ( state == CHARACTERS_STATES.WALK ) {
	//-- Setup vars
	move_x = lengthdir_x(walk_speed, walk_direction);
	move_y = lengthdir_y(walk_speed, walk_direction);
	
	//-- check collisions
	if ( place_meeting(x + move_x, y, Obj_collision) ) move_x = 0;
	if ( place_meeting(x, y + move_y, Obj_collision) ) move_y = 0;
	
	//-- Return Idle
	if ( move_x == 0 ) and ( move_y = 0 ) {
		state = CHARACTERS_STATES.IDLE;
	} else {
		//-- make move
		x += move_x;
		y += move_y;
	}
	
}