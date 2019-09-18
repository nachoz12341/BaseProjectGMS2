///@description controller_create_input(controller, key, input_press, controller_type, controller_number)
///@param controller
///@param key
///@param input_press
///@param controller_type
///@param controller_number

var controller,key,input_press,controller_type,controller_number,width,height;

controller		 =argument0;
key				 =argument1;
input_press		 =argument2;
controller_type	 =argument3
controller_number=argument4;

width=ds_grid_width(controller);
height=ds_grid_height(controller)

ds_grid_resize(controller,width+1,height);

ds_grid_set(controller,width,CONTROLLER_STATE ,false);
ds_grid_set(controller,width,CONTROLLER_KEY   ,key);
ds_grid_set(controller,width,CONTROLLER_PRESS ,input_press);
ds_grid_set(controller,width,CONTROLLER_TYPE  ,controller_type);
ds_grid_set(controller,width,CONTROLLER_NUMBER,controller_number);

return width;	//returns index in ds_grid corresponding to grid
