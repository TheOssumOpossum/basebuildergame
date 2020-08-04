/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 75D48B85
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58A6C73E
/// @DnDArgument : "var" "global.placing_conveyor"
/// @DnDArgument : "value" "conveyable"
if(global.placing_conveyor == conveyable)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2889C618
	/// @DnDInput : 4
	/// @DnDParent : 58A6C73E
	/// @DnDArgument : "expr" "id"
	/// @DnDArgument : "expr_3" "-20"
	/// @DnDArgument : "expr_relative_3" "1"
	/// @DnDArgument : "var" "(global.conveyor_start).deliver_to"
	/// @DnDArgument : "var_1" "global.placing_conveyor"
	/// @DnDArgument : "var_2" "global.conveyor_start"
	/// @DnDArgument : "var_3" "global.scrap"
	(global.conveyor_start).deliver_to = id;
	global.placing_conveyor = 0;
	global.conveyor_start = 0;
	global.scrap += -20;
}