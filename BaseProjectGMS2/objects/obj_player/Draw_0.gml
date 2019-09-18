/// @description Sprite state machine

switch(sprite_state)
{
	case SPRITE_IDLE:
		sprite_index=sprite_idle[sprite_direction];
	break;
	
	case SPRITE_WALK:
		sprite_index=sprite_walk[sprite_direction];
	break;
}
