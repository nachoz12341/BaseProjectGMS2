///@description character_get_direction( x_speed, y_speed)
///@param x speed
///@param y speed
//returns a number 0-7 corresponding to the direction the player is facing
//0 = right 2 = up 

var x_speed,y_speed,angle;

x_speed=argument0;
y_speed=argument1;

angle=darctan2(y_speed,x_speed);

if(angle>=-22.5 and angle<=22.5)
	return 0;

if(angle>=-67.5 and angle<=-22.5)
	return 1;
	
if(angle>=-112.5 and angle<=-67.5)
	return 2;
	
if(angle>=-157.5 and angle<=-112.5)
	return 3;
	
if(angle>=157.5 or angle<=-157.5)
	return 4;

if(angle>=112.5 and angle<=157.5)
	return 5;
	
if(angle>=67.5 and angle<=112.5)
	return 6;
	
if(angle>=22.5 and angle<=67.5)
	return 7;


//Default case 
return 0;