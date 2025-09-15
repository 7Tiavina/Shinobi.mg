var _choice = choose(true, false);

if ( _choice ) {
	state = CHARACTERS_STATES.WALK;
	walk_direction = irandom(359);
} else {
	state = CHARACTERS_STATES.IDLE;
}

alarm[0] = random_range(room_speed, room_speed * 3);