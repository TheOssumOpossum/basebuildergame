/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 264DE1B0
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E66D9FB
/// @DnDArgument : "var" "global.placing_conveyor"
/// @DnDArgument : "value" "conveyable"
if(global.placing_conveyor == conveyable)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D535715
	/// @DnDInput : 2
	/// @DnDParent : 5E66D9FB
	/// @DnDArgument : "expr" "id"
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "global.conveyor_start"
	/// @DnDArgument : "var_1" "global.placing_conveyor"
	global.conveyor_start = id;
	global.placing_conveyor += 1;
}