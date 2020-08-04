/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7F9E807A
/// @DnDArgument : "expr" "point_in_rectangle(mouse_x,mouse_y,upgrade_left,upgrade_top,upgrade_right,global.upgrade_bottom)"
if(point_in_rectangle(mouse_x,mouse_y,upgrade_left,upgrade_top,upgrade_right,global.upgrade_bottom))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 72BB7535
	/// @DnDParent : 7F9E807A
	/// @DnDArgument : "var" "global.upgrade_scroll"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "upgrade_scroll_min"
	if(global.upgrade_scroll > upgrade_scroll_min)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D5E415E
		/// @DnDParent : 72BB7535
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.upgrade_scroll"
		global.upgrade_scroll += -1;
	}
}