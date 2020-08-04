/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DBA3F2C
/// @DnDArgument : "var" "interactable"
/// @DnDArgument : "op" "2"
if(interactable > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00B37CC8
	/// @DnDParent : 0DBA3F2C
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "interactable"
	interactable += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 159AF457
/// @DnDArgument : "var" "placed"
if(placed == 0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2332746E
	/// @DnDParent : 159AF457
	/// @DnDArgument : "x" "mouse_x"
	/// @DnDArgument : "y" "mouse_y"
	x = mouse_x;
	y = mouse_y;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2134C0E4
	/// @DnDParent : 159AF457
	/// @DnDArgument : "key" "vk_control"
	var l2134C0E4_0;
	l2134C0E4_0 = keyboard_check(vk_control);
	if (l2134C0E4_0)
	{
		/// @DnDAction : YoYo Games.Movement.Snap_Position
		/// @DnDVersion : 1
		/// @DnDHash : 2BC242E7
		/// @DnDParent : 2134C0E4
		/// @DnDArgument : "xsnap" "64"
		/// @DnDArgument : "ysnap" "64"
		move_snap(64, 64);
	}
}