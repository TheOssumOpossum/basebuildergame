/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D6E630F
/// @DnDArgument : "var" "interactable"
if(interactable == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 57E3A591
	/// @DnDParent : 6D6E630F
	/// @DnDArgument : "var" "global.scrap"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "cost"
	if(global.scrap >= cost)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5CE3DA73
		/// @DnDParent : 57E3A591
		/// @DnDArgument : "var" "global.placing"
		/// @DnDArgument : "value" "1"
		if(global.placing == 1)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 2DE6F7DA
			/// @DnDParent : 5CE3DA73
			/// @DnDArgument : "x" " 0"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_abstract_collideable"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "64c848ce-24f4-4128-94c6-00b7aa76f43a"
			var l2DE6F7DA_0 = instance_place(x +  0, y + 0, obj_abstract_collideable);
			if (!(l2DE6F7DA_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6DFA954A
				/// @DnDInput : 5
				/// @DnDParent : 2DE6F7DA
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_1" "1"
				/// @DnDArgument : "expr_2" "2"
				/// @DnDArgument : "expr_3" "-cost"
				/// @DnDArgument : "expr_relative_3" "1"
				/// @DnDArgument : "var" "placed"
				/// @DnDArgument : "var_1" "image_alpha"
				/// @DnDArgument : "var_2" "global.placing"
				/// @DnDArgument : "var_3" "global.scrap"
				/// @DnDArgument : "var_4" "progress"
				placed = 1;
				image_alpha = 1;
				global.placing = 2;
				global.scrap += -cost;
				progress = 0;
			
				/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
				/// @DnDVersion : 1
				/// @DnDHash : 0642D0C4
				/// @DnDParent : 2DE6F7DA
				/// @DnDArgument : "key" "vk_shift"
				var l0642D0C4_0;
				l0642D0C4_0 = keyboard_check(vk_shift);
				if (l0642D0C4_0)
				{
					/// @DnDAction : YoYo Games.Common.Execute_Code
					/// @DnDVersion : 1
					/// @DnDHash : 2DDFB22F
					/// @DnDParent : 0642D0C4
					/// @DnDArgument : "code" "var new_building = instance_create_depth(mouse_x,mouse_y,1,obj_name)$(13_10)with (new_building) {$(13_10)	obj_name = obj_collector$(13_10)	cost = 5$(13_10)	global.placing = 1 $(13_10)}"
					var new_building = instance_create_depth(mouse_x,mouse_y,1,obj_name)
					with (new_building) {
						obj_name = obj_collector
						cost = 5
						global.placing = 1 
					}
				}
			}
		}
	}
}