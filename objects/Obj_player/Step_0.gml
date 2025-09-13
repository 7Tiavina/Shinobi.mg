
// --- INPUTS --- //
var _left  = keyboard_check(vk_left)  || keyboard_check(ord("Q"));
var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _up    = keyboard_check(vk_up)    || keyboard_check(ord("Z"));
var _down  = keyboard_check(vk_down)  || keyboard_check(ord("S"));

// Directions de mouvement
x_direction = _right - _left;  // -1 gauche, 1 droite
y_direction = _down  - _up;    // -1 haut,   1 bas

// --- IDLE STATE ---
if (state == CHARACTERS_STATES.IDLE) {
    if (x_direction != 0 || y_direction != 0) {
        state = CHARACTERS_STATES.WALK;
    }
}

// --- WALK STATE ---
if (state == CHARACTERS_STATES.WALK) {
    // Déplacement simple basé sur la direction
    move_x = x_direction * move_speed;
    move_y = y_direction * move_speed;

    // --- COLLISIONS ---
    if (place_meeting(x + move_x, y, Obj_collision)) move_x = 0;
    if (place_meeting(x, y + move_y, Obj_collision)) move_y = 0;

    // --- DEPLACEMENT EFFECTIF ---
    if (move_x != 0 || move_y != 0) {
        x += move_x;
        y += move_y;
    } else {
        state = CHARACTERS_STATES.IDLE;
    }
}
