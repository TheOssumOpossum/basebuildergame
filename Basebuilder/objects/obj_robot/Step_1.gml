/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A5A73AF
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "2"
if(speed > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 078DDAF8
	/// @DnDParent : 6A5A73AF
	/// @DnDArgument : "expr" "min(min_move_diff,abs(abs(x-x_move) + abs(y-y_move)))"
	/// @DnDArgument : "var" "min_move_diff"
	min_move_diff = min(min_move_diff,abs(abs(x-x_move) + abs(y-y_move)));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F588FAA
	/// @DnDParent : 6A5A73AF
	/// @DnDArgument : "var" "abs(abs(x-x_move) + abs(y-y_move))"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "min_move_diff"
	if(abs(abs(x-x_move) + abs(y-y_move)) > min_move_diff)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 2493052C
		/// @DnDParent : 4F588FAA
		speed = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71B12123
		/// @DnDParent : 4F588FAA
		/// @DnDArgument : "var" "min_move_diff"
		min_move_diff = 0;
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 6A3C3274
		/// @DnDParent : 4F588FAA
		/// @DnDArgument : "x" "x_move"
		/// @DnDArgument : "y" "y_move"
		x = x_move;
		y = y_move;
	}
}