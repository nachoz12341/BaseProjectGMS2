///#description controller_update(controller)
///@param controller
//Updates the states for the keys

var controller,key,input_press,controller_type,controller_number;

controller=argument0;

for(var i=0;i<ds_grid_width(controller);i++)
{
	key				 =controller[# i,CONTROLLER_KEY];
	input_press		 =controller[# i,CONTROLLER_PRESS];
	controller_type	 =controller[# i,CONTROLLER_TYPE];
	controller_number=controller[# i,CONTROLLER_NUMBER];
	
	if(controller_type==CONTROLLER_KEYBOARD)
	{
		if(input_press==INPUT_PRESS)
			controller[# i,CONTROLLER_STATE]=keyboard_check_pressed(key);
			
		if(input_press==INPUT_HOLD)
			controller[# i,CONTROLLER_STATE]=keyboard_check(key);
			
		if(input_press==INPUT_RELEASE)
			controller[# i,CONTROLLER_STATE]=keyboard_check_released(key);
	}
	else
		if(controller_type==CONTROLLER_GAMEPAD)
		{
			if(input_press==INPUT_PRESS)
				controller[# i,CONTROLLER_STATE]=gamepad_button_check_pressed(controller_number,key);
				
			if(input_press==INPUT_HOLD)
				controller[# i,CONTROLLER_STATE]=gamepad_button_check(controller_number,key);
				
			if(input_press==INPUT_RELEASE)
				controller[# i,CONTROLLER_STATE]=gamepad_button_check_released(controller_number,key);
				
			if(input_press==INPUT_ANALOG)
				controller[# i,CONTROLLER_STATE]=gamepad_axis_value(controller_number,key);
		}
}
