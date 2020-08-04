/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27399181
/// @DnDArgument : "var" "placed"
if(placed == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F925B54
	/// @DnDParent : 27399181
	/// @DnDArgument : "expr" "(orientation+1)%4"
	/// @DnDArgument : "var" "orientation"
	orientation = (orientation+1)%4;
}