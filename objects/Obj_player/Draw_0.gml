/// @description Dessin du joueur et de l'animation
//profondeur
if (!place_meeting(x,y,Obj_depth_collision)) depth = -y;

// Taille d'une frame
var_cs = 16;

// --- SETUP SPRITE ---
switch (state) {
    case CHARACTERS_STATES.IDLE: sprite_index = spr_player_idle; break;
    case CHARACTERS_STATES.WALK: sprite_index = spr_player_walk; break;
}

// --- SETUP FRAME X ---
if (state == CHARACTERS_STATES.IDLE || state == CHARACTERS_STATES.WALK) {
    if (x_direction == -1) frame_x = 2;
    else if (x_direction == 1) frame_x = 3;
    else if (y_direction == -1) frame_x = 1;
    else if (y_direction == 1) frame_x = 0;
}

// --- SETUP FRAME Y ---
if (state == CHARACTERS_STATES.WALK) {
    var _animLength = 4;
    if (floor(frame_y + anim_speed) <= _animLength - 1) frame_y += anim_speed;
    else frame_y = 0;
} else {
    frame_y = 0;
}

// --- DRAW SPRITE ---
draw_sprite_part(sprite_index, 0, frame_x * _cs, floor(frame_y) * _cs, _cs, _cs, x - 8, y - 16);

/*
// --- DEBUG COLLISION MASK ---
draw_set_color(c_red);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
*/
