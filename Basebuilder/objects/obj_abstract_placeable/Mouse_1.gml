/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1759F3C7
/// @DnDArgument : "var" "placed"
/// @DnDArgument : "value" "1"
if(placed == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32991E58
	/// @DnDParent : 1759F3C7
	/// @DnDArgument : "expr" "100/30"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "deletion_progress"
	deletion_progress += 100/30;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 526A51DE
/// @DnDArgument : "var" "deletion_progress"
/// @DnDArgument : "value" "100"
if(deletion_progress == 100)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1EDABDC3
	/// @DnDParent : 526A51DE
	instance_destroy();
}