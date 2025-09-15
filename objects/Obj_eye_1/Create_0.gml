randomize();

//--- VARS ---//

//--Moove---//
move_x = 0;
move_y = 0;
walk_speed = .5;
walk_direction = 0;

//--First MOve---/
alarm[0] = random_range(room_speed,room_speed * 3);

//--State--//
state = CHARACTERS_STATES.IDLE;

//--Animation--//
frame_x = 0;
frame_y = 0;
anim_speed = 6 / room_speed;
anim_length = 4;

x_origin = 8;
y_origin = 15;

my_sprite = spr_eye_1;