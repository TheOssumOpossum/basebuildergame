/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4790D809
/// @DnDArgument : "expr" "hover"
if(hover)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65F3EB5C
	/// @DnDParent : 4790D809
	/// @DnDArgument : "var" "global.upgrades_open"
	/// @DnDArgument : "value" "1"
	if(global.upgrades_open == 1)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 056912B9
		/// @DnDParent : 65F3EB5C
		/// @DnDArgument : "var" "type"
		if(type == 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4127AC16
			/// @DnDDisabled : 1
			/// @DnDParent : 056912B9
			/// @DnDArgument : "var" "global.scrap"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "cost"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A9CE7DF
			/// @DnDParent : 4127AC16
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "global.placing"
			global.placing += 1;
			
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 379EC364
			/// @DnDDisabled : 1
			/// @DnDParent : 4127AC16
			/// @DnDArgument : "xpos" "mouse_x"
			/// @DnDArgument : "ypos" "mouse_y"
			/// @DnDArgument : "objectid" "obj_collector"
			/// @DnDSaveInfo : "objectid" "ef997626-8b44-477a-800f-c6c77e2daad8"
			
			
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 744B380F
			/// @DnDParent : 4127AC16
			/// @DnDArgument : "code" "var new_building = instance_create_depth(mouse_x,mouse_y,1,obj_collector)$(13_10)with (new_building) {$(13_10)	cost = 5$(13_10)	spr_name = spr_collector$(13_10)	obj_name = obj_collector$(13_10)}"
			var new_building = instance_create_depth(mouse_x,mouse_y,1,obj_collector)
			with (new_building) {
				cost = 5
				spr_name = spr_collector
				obj_name = obj_collector
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3CB9BB66
		/// @DnDParent : 65F3EB5C
		/// @DnDArgument : "var" "type"
		/// @DnDArgument : "value" "1"
		if(type == 1)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 44CCA4B1
			/// @DnDParent : 3CB9BB66
			/// @DnDArgument : "var" "global.scrap"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "cost "
			if(global.scrap >= cost )
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 56391B4F
				/// @DnDInput : 2
				/// @DnDParent : 44CCA4B1
				/// @DnDArgument : "expr" "-cost"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "expr_1" "1"
				/// @DnDArgument : "expr_relative_1" "1"
				/// @DnDArgument : "var" "global.scrap"
				/// @DnDArgument : "var_1" "global.level_0"
				global.scrap += -cost;
				global.level_0 += 1;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 52FA0CA2
		/// @DnDParent : 65F3EB5C
		/// @DnDArgument : "var" "type"
		/// @DnDArgument : "value" "2"
		if(type == 2)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 30AF9305
			/// @DnDDisabled : 1
			/// @DnDParent : 52FA0CA2
			/// @DnDArgument : "var" "global.scrap"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "cost"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 313454FC
			/// @DnDParent : 30AF9305
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "global.placing"
			global.placing += 1;
			
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 3D1FC3A5
			/// @DnDParent : 30AF9305
			/// @DnDArgument : "code" "var new_building = instance_create_depth(mouse_x,mouse_y,1,obj_storage)$(13_10)with (new_building) {$(13_10)	cost = 15$(13_10)	spr_name = spr_storage$(13_10)}"
			var new_building = instance_create_depth(mouse_x,mouse_y,1,obj_storage)
			with (new_building) {
				cost = 15
				spr_name = spr_storage
			}
			
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 12F4D67A
			/// @DnDDisabled : 1
			/// @DnDParent : 30AF9305
			/// @DnDArgument : "xpos" "mouse_x"
			/// @DnDArgument : "ypos" "mouse_y"
			/// @DnDArgument : "objectid" "obj_storage"
			/// @DnDSaveInfo : "objectid" "687b2afa-ca4a-4ff5-ba1e-024a0351ad39"
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 472B7F50
		/// @DnDParent : 65F3EB5C
		/// @DnDArgument : "var" "type"
		/// @DnDArgument : "value" "3"
		if(type == 3)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 00AA4220
			/// @DnDParent : 472B7F50
			/// @DnDArgument : "var" "global.scrap"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "cost"
			if(global.scrap >= cost)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2ADAF404
				/// @DnDParent : 00AA4220
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "global.placing_conveyor"
				global.placing_conveyor = 1;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 14AFBD64
				/// @DnDDisabled : 1
				/// @DnDParent : 00AA4220
				/// @DnDArgument : "xpos" "mouse_x"
				/// @DnDArgument : "ypos" "mouse_y"
				/// @DnDArgument : "objectid" "obj_storage"
				/// @DnDSaveInfo : "objectid" "687b2afa-ca4a-4ff5-ba1e-024a0351ad39"
			}
		}
	}
}