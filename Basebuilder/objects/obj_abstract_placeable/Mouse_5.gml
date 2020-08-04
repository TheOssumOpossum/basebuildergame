/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 799AB7F2
/// @DnDArgument : "var" "placed"
if(placed == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C94E9B0
	/// @DnDParent : 799AB7F2
	/// @DnDArgument : "var" "global.placing"
	global.placing = 0;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 499C061E
	/// @DnDParent : 799AB7F2
	instance_destroy();
}