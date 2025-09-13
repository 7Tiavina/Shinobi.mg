/// @description Initialisation des variables du joueur

// --- Mouvements ---
move_x = 0;
move_y = 0;
move_speed = 1;
move_direction = 0;

// --- Etats ---
enum CHARACTERS_STATES { IDLE, WALK }
state = CHARACTERS_STATES.IDLE;

// --- Animation ---
_cs = 16;          // taille d'une frame (16x16 pixels)
frame_x = 0;       // colonne de frame
frame_y = 0;       // ligne de frame
anim_speed = 0.2;  // vitesse d’animation

// --- Input ---
x_direction = 0;
y_direction = 0;

// --- Collision mask fixe ---
mask_index = spr_player_example; // le masque reste identique quel que soit le sprite
