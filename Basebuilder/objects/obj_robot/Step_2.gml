/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 72248F75
/// @DnDComment : This is so the robot doesn't move to something that was just placed$(13_10)
/// @DnDArgument : "var" "global.placing"
/// @DnDArgument : "value" "2"
if(global.placing == 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EED87BD
	/// @DnDParent : 72248F75
	/// @DnDArgument : "var" "global.placing"
	global.placing = 0;
}