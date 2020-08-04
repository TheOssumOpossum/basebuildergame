/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2300101D
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6418BA5B
/// @DnDArgument : "var" "deliver_to"
/// @DnDArgument : "not" "1"
if(!(deliver_to == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 262BF333
	/// @DnDComment : Cost of conveyor belt$(13_10)is not store anywhere$(13_10)
	/// @DnDParent : 6418BA5B
	/// @DnDArgument : "expr" "20"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.scrap"
	global.scrap += 20;
}