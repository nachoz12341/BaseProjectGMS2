/// @description Create player variables

#macro	STATE_IDLE 0;
#macro	STATE_WALK 1;

#macro SPRITE_IDLE 0;
#macro SPRITE_WALK 1;

player_state=STATE_IDLE;
sprite_state=SPRITE_IDLE;
sprite_direction=0;

x_speed=0;
y_speed=0;

controller=controller_create();
key_up	 =controller_create_input(controller,ord("W"),INPUT_HOLD,CONTROLLER_KEYBOARD,0);
key_down =controller_create_input(controller,ord("S"),INPUT_HOLD,CONTROLLER_KEYBOARD,0);
key_left =controller_create_input(controller,ord("A"),INPUT_HOLD,CONTROLLER_KEYBOARD,0);
key_right=controller_create_input(controller,ord("D"),INPUT_HOLD,CONTROLLER_KEYBOARD,0);


//Sprite data structures
sprite_idle[0]=player_idle_e;
sprite_idle[1]=player_idle_ne;
sprite_idle[2]=player_idle_n;
sprite_idle[3]=player_idle_nw;
sprite_idle[4]=player_idle_w;
sprite_idle[5]=player_idle_sw;
sprite_idle[6]=player_idle_s;
sprite_idle[7]=player_idle_se;


sprite_walk[0]=player_walk_e;
sprite_walk[1]=player_walk_ne;
sprite_walk[2]=player_walk_n;
sprite_walk[3]=player_walk_nw;
sprite_walk[4]=player_walk_w;
sprite_walk[5]=player_walk_sw;
sprite_walk[6]=player_walk_s;
sprite_walk[7]=player_walk_se;