/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7B64766C
/// @DnDArgument : "var" "interactable"
/// @DnDArgument : "value" "1"
if(interactable == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7094D0B2
	/// @DnDParent : 7B64766C
	/// @DnDArgument : "var" "global.upgrades_open"
	/// @DnDArgument : "value" "1"
	if(global.upgrades_open == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 77B7B9BA
		/// @DnDParent : 7094D0B2
		/// @DnDArgument : "var" "global.upgrades_open"
		global.upgrades_open = 0;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1D16E171
		/// @DnDParent : 7094D0B2
		/// @DnDArgument : "xpos" "786"
		/// @DnDArgument : "ypos" "8"
		/// @DnDArgument : "objectid" "obj_upgrades"
		/// @DnDSaveInfo : "objectid" "f212acc3-52d3-4acd-b820-fdc25f93ac95"
		instance_create_layer(786, 8, "Instances", obj_upgrades);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 66799AB4
		/// @DnDApplyTo : 2d2625c0-2650-4bad-b42f-89d5ea3ae6f9
		/// @DnDParent : 7094D0B2
		with(obj_upgrade) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 7F56BFDD
		/// @DnDParent : 7094D0B2
		/// @DnDArgument : "steps" "1"
		alarm_set(0, 1);
	}
}