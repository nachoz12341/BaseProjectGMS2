///@description controller_create()
//Creates a data structure that will process inputs

//Index labels
#macro CONTROLLER_STATE  0;
#macro CONTROLLER_KEY	 1;
#macro CONTROLLER_PRESS  2;
#macro CONTROLLER_TYPE	 3;
#macro CONTROLLER_NUMBER 4;

//Input types
#macro CONTROLLER_KEYBOARD 0;
#macro CONTROLLER_GAMEPAD  1;

//Press types
#macro INPUT_PRESS   0;
#macro INPUT_HOLD    1;
#macro INPUT_RELEASE 2;
#macro INPUT_ANALOG	 3;


return ds_grid_create(0,4);

