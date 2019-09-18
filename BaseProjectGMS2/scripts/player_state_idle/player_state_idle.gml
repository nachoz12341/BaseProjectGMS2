///@description player_state_idle()
//State when player isn't doing anything

//Walk
if(controller_get_state(controller,key_up)    or 
   controller_get_state(controller,key_down)  or 
   controller_get_state(controller,key_left)  or 
   controller_get_state(controller,key_right))
	player_state=STATE_WALK;