/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 49E3FAFC
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 164FB261
/// @DnDArgument : "var" "placed"
/// @DnDArgument : "value" "1"
if(placed == 1)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4ABEC544
	/// @DnDParent : 164FB261
	/// @DnDArgument : "code" "var highlighted = max(hover, conveyable==global.placing_conveyor)$(13_10)draw_sprite_ext(spr_name,highlighted,x,y,1,1,rot,c_white,0.5+placed*0.5)"
	var highlighted = max(hover, conveyable==global.placing_conveyor)
	draw_sprite_ext(spr_name,highlighted,x,y,1,1,rot,c_white,0.5+placed*0.5)

	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 1F3C70F1
	/// @DnDParent : 164FB261
	/// @DnDArgument : "x1" "-sprite_width/2+4"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "sprite_height/2"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "sprite_width/2-4"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "sprite_height/2+4"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "value" "progress"
	/// @DnDArgument : "backcol" "$FF000000"
	/// @DnDArgument : "barcol" "$FF000000"
	/// @DnDArgument : "mincol" "$FF6DFF9E"
	/// @DnDArgument : "maxcol" "$FF6DFF9E"
	draw_healthbar(x + -sprite_width/2+4, y + sprite_height/2, x + sprite_width/2-4, y + sprite_height/2+4, progress, $FF000000 & $FFFFFF, $FF6DFF9E & $FFFFFF, $FF6DFF9E & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08838E60
	/// @DnDParent : 164FB261
	/// @DnDArgument : "var" "deliver_to"
	/// @DnDArgument : "not" "1"
	if(!(deliver_to == 0))
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Line
		/// @DnDVersion : 1
		/// @DnDHash : 776D563F
		/// @DnDParent : 08838E60
		/// @DnDArgument : "x1_relative" "1"
		/// @DnDArgument : "y1_relative" "1"
		/// @DnDArgument : "x2" "deliver_to.x"
		/// @DnDArgument : "y2" "deliver_to.y"
		draw_line(x + 0, y + 0, deliver_to.x, deliver_to.y);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AF90FAA
	/// @DnDParent : 164FB261
	/// @DnDArgument : "var" "global.conveyor_start"
	/// @DnDArgument : "value" "id"
	if(global.conveyor_start == id)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Line
		/// @DnDVersion : 1
		/// @DnDHash : 73F81198
		/// @DnDParent : 6AF90FAA
		/// @DnDArgument : "x1_relative" "1"
		/// @DnDArgument : "y1_relative" "1"
		/// @DnDArgument : "x2" "mouse_x"
		/// @DnDArgument : "y2" "mouse_y"
		draw_line(x + 0, y + 0, mouse_x, mouse_y);
	}
}