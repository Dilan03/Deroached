/// @description Update State, Respond to clicks

#region State Animations
switch(state)
{
	case VisualState.deactivating: 
	{
		timer++;
		
		x=twerp(deactivate_ease,
						active_pos[0],
						active_pos[0]+inactive_offset[0],
						timer/length);
		y=twerp(deactivate_ease,
						active_pos[1],
						active_pos[1]+inactive_offset[1],
						timer/length);
		image_alpha=twerp(deactivate_ease,1,0,timer/length);
		if(timer>=length)
			state = VisualState.inactive;
	}break;
	
	case VisualState.activating: 
	{
		timer++;
		
		x=twerp(activate_ease,
					active_pos[0]+inactive_offset[0],
					active_pos[0],
					timer/length);
		y=twerp(activate_ease,
					active_pos[1]+inactive_offset[1],
					active_pos[1],
					timer/length);
		image_alpha=twerp(activate_ease,0,1,timer/length);
		if(timer>=length)
			state = VisualState.active;
	}break;
	
	case VisualState.active:
	{/*
		x=active_pos[0];
		y=active_pos[1];
		image_alpha=1;*/
	}break;
	
	case VisualState.inactive:
	{
		x=active_pos[0]+inactive_offset[0];
		y=active_pos[1]+inactive_offset[1];
		image_alpha=0;
	}break;
}
#endregion

//Detect Clicks
if (state != VisualState.active) exit;

/*
if(script != noone && position_meeting(mouse_gui_x,mouse_gui_y,id))
{	//Moused Over with an existing script
	image_index=1;
	if(mouse_check_button_pressed(mb_left))
	{	//Left button is being pressed
		script_execute(script,aspect_argument);		
	}
	
	if(mouse_check_button_released(mb_left))
	{	//Left button is being pressed
		draged = false;
		x = xx + mouse_x;
		y = yy + mouse_y;
	}
}*/
else
	image_index=0;