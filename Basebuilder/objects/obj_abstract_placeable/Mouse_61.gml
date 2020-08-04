/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B7E744F
/// @DnDArgument : "var" "placed"
if(placed == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77ED404B
	/// @DnDParent : 3B7E744F
	/// @DnDArgument : "expr" "(orientation-1)%4"
	/// @DnDArgument : "var" "orientation"
	orientation = (orientation-1)%4;
}