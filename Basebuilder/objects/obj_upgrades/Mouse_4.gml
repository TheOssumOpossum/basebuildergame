/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52DA4557
/// @DnDArgument : "var" "interactable"
/// @DnDArgument : "value" "1"
if(interactable == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7094D0B2
	/// @DnDParent : 52DA4557
	/// @DnDArgument : "var" "global.upgrades_open"
	if(global.upgrades_open == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 77B7B9BA
		/// @DnDParent : 7094D0B2
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.upgrades_open"
		global.upgrades_open = 1;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 06366604
		/// @DnDParent : 7094D0B2
		/// @DnDArgument : "xpos" "986"
		/// @DnDArgument : "ypos" "8"
		/// @DnDArgument : "objectid" "obj_exit"
		/// @DnDSaveInfo : "objectid" "7ba7bf4d-acb8-4a8c-9326-1226d0155ef3"
		instance_create_layer(986, 8, "Instances", obj_exit);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 08C55469
		/// @DnDParent : 7094D0B2
		/// @DnDArgument : "code" "var x_coord = 250$(13_10)var new_y = 8$(13_10)var new_type = 0$(13_10)////////////////$(13_10)var buy_scrap_collector = instance_create_depth(x_coord, new_y, -1, obj_upgrade);$(13_10)with (buy_scrap_collector)$(13_10){$(13_10)	y_anchor = new_y$(13_10)	type = new_type$(13_10)	cost = 5	$(13_10)}$(13_10)////////////////$(13_10)new_y += 74$(13_10)new_type += 1$(13_10)var upgrade_carrying_capacity = instance_create_depth(x_coord, new_y, -1, obj_upgrade);$(13_10)with (upgrade_carrying_capacity)$(13_10){$(13_10)	y_anchor = new_y$(13_10)	type = new_type$(13_10)	cost = 10$(13_10)}$(13_10)////////////////$(13_10)new_y += 74$(13_10)new_type += 1$(13_10)var buy_storage = instance_create_depth(x_coord, new_y, -1, obj_upgrade);$(13_10)with (buy_storage)$(13_10){$(13_10)	y_anchor = new_y$(13_10)	type = new_type$(13_10)	cost = 15	$(13_10)}$(13_10)////////////////$(13_10)new_y += 74$(13_10)new_type += 1$(13_10)var buy_conveyor = instance_create_depth(x_coord, new_y, -1, obj_upgrade);$(13_10)with (buy_conveyor)$(13_10){$(13_10)	y_anchor = new_y$(13_10)	type = new_type$(13_10)	cost = 20	$(13_10)}$(13_10)////////////////"
		var x_coord = 250
		var new_y = 8
		var new_type = 0
		////////////////
		var buy_scrap_collector = instance_create_depth(x_coord, new_y, -1, obj_upgrade);
		with (buy_scrap_collector)
		{
			y_anchor = new_y
			type = new_type
			cost = 5	
		}
		////////////////
		new_y += 74
		new_type += 1
		var upgrade_carrying_capacity = instance_create_depth(x_coord, new_y, -1, obj_upgrade);
		with (upgrade_carrying_capacity)
		{
			y_anchor = new_y
			type = new_type
			cost = 10
		}
		////////////////
		new_y += 74
		new_type += 1
		var buy_storage = instance_create_depth(x_coord, new_y, -1, obj_upgrade);
		with (buy_storage)
		{
			y_anchor = new_y
			type = new_type
			cost = 15	
		}
		////////////////
		new_y += 74
		new_type += 1
		var buy_conveyor = instance_create_depth(x_coord, new_y, -1, obj_upgrade);
		with (buy_conveyor)
		{
			y_anchor = new_y
			type = new_type
			cost = 20	
		}
		////////////////
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 15AF037B
		/// @DnDParent : 7094D0B2
		/// @DnDArgument : "steps" "1"
		alarm_set(0, 1);
	}
}