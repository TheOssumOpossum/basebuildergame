if(global.placing == 0 && global.placing_conveyor == 0)
{
	//don't move criteria
	if(mouse_y > 156 || !(instance_position(mouse_x,mouse_y,obj_upgrade) || 
	     instance_position(mouse_x,mouse_y,obj_exit) || 
	     instance_position(mouse_x,mouse_y,obj_upgrades)))
	{
		var instance = instance_position(mouse_x, mouse_y, obj_scrap)
		if (instance == noone) {
			instance = instance_position(mouse_x, mouse_y, obj_hub)
		}
		if (instance == noone) {
			instance = instance_position(mouse_x, mouse_y, obj_collector)	
		}
		if (instance == noone) {
			instance = instance_position(mouse_x, mouse_y, obj_storage)	
		}
		if (instance != noone) {
			//move to specific position
			x_move = instance.x;
			y_move = instance.y;
		} else {
			//move to arbitrary position
			x_move = mouse_x;
			y_move = mouse_y;
		}
		min_move_diff = abs(abs(x-x_move) + abs(y-y_move));
		progress = 0;
	
		direction = point_direction(x, y, x_move, y_move );
	
		speed = 5;
	}
} 