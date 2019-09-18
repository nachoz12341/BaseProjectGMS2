///@description controller_get_state(controller, key)
///@param controller
///@param key
//Gets state for key given in corresponding controller

var controller, key;

controller=argument0;
key=argument1;

return controller[# key,CONTROLLER_STATE];
