/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7BFF29B2
/// @DnDArgument : "var" "speed"
if(speed == 0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 7CA3A812
	/// @DnDParent : 7BFF29B2
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_scrap"
	/// @DnDSaveInfo : "object" "3279e3aa-de19-4423-9a73-5503b7fb77e9"
	var l7CA3A812_0 = instance_place(x + 0, y + 0, obj_scrap);
	if ((l7CA3A812_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 422586DB
		/// @DnDParent : 7CA3A812
		/// @DnDArgument : "var" "scrap_on_hand"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "global.level_0+1"
		if(scrap_on_hand < global.level_0+1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 15324278
			/// @DnDParent : 422586DB
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "progress"
			progress += 1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 18C796D8
			/// @DnDParent : 422586DB
			/// @DnDArgument : "var" "progress"
			/// @DnDArgument : "value" "100"
			if(progress == 100)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 75E36177
				/// @DnDInput : 2
				/// @DnDParent : 18C796D8
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "scrap_on_hand"
				/// @DnDArgument : "var_1" "progress"
				scrap_on_hand += 1;
				progress = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1FBDD204
	/// @DnDParent : 7BFF29B2
	else
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 6173718E
		/// @DnDParent : 1FBDD204
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_hub"
		/// @DnDSaveInfo : "object" "2cca3c4a-f8d1-4ad4-9400-41df5584dd62"
		var l6173718E_0 = instance_place(x + 0, y + 0, obj_hub);
		if ((l6173718E_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 501E99FF
			/// @DnDParent : 6173718E
			/// @DnDArgument : "var" "scrap_on_hand"
			/// @DnDArgument : "not" "1"
			if(!(scrap_on_hand == 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6B9FC948
				/// @DnDParent : 501E99FF
				/// @DnDArgument : "expr" "2"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "progress"
				progress += 2;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 56C97F6B
				/// @DnDParent : 501E99FF
				/// @DnDArgument : "var" "progress"
				/// @DnDArgument : "value" "100"
				if(progress == 100)
				{
					/// @DnDAction : YoYo Games.Common.Set_Global
					/// @DnDVersion : 1
					/// @DnDHash : 00BA5D04
					/// @DnDParent : 56C97F6B
					/// @DnDArgument : "value" "scrap_on_hand"
					/// @DnDArgument : "value_relative" "1"
					/// @DnDArgument : "var" "scrap"
					global.scrap += scrap_on_hand;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6161118C
					/// @DnDInput : 2
					/// @DnDParent : 56C97F6B
					/// @DnDArgument : "var" "scrap_on_hand"
					/// @DnDArgument : "var_1" "progress"
					scrap_on_hand = 0;
					progress = 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 43BCE3E6
		/// @DnDParent : 1FBDD204
		else
		{
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 3C4F6CA4
			/// @DnDParent : 43BCE3E6
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_collector"
			/// @DnDSaveInfo : "object" "ef997626-8b44-477a-800f-c6c77e2daad8"
			var l3C4F6CA4_0 = instance_place(x + 0, y + 0, obj_collector);
			if ((l3C4F6CA4_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3190F290
				/// @DnDParent : 3C4F6CA4
				/// @DnDArgument : "expr" "instance_position(x,y,obj_collector)"
				/// @DnDArgument : "var" "collector_id"
				collector_id = instance_position(x,y,obj_collector);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0918FA86
				/// @DnDParent : 3C4F6CA4
				/// @DnDArgument : "var" "collector_id"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "noone"
				if(!(collector_id == noone))
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 19A2A01A
					/// @DnDParent : 0918FA86
					/// @DnDArgument : "var" "scrap_on_hand"
					/// @DnDArgument : "op" "1"
					/// @DnDArgument : "value" "global.level_0+1"
					if(scrap_on_hand < global.level_0+1)
					{
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4F961575
						/// @DnDParent : 19A2A01A
						/// @DnDArgument : "var" "collector_id.progress"
						/// @DnDArgument : "value" "100 "
						if(collector_id.progress == 100 )
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 546C81F9
							/// @DnDParent : 4F961575
							/// @DnDArgument : "expr" "5"
							/// @DnDArgument : "expr_relative" "1"
							/// @DnDArgument : "var" "progress"
							progress += 5;
						
							/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 51824965
							/// @DnDParent : 4F961575
							/// @DnDArgument : "var" "progress"
							/// @DnDArgument : "value" "100"
							if(progress == 100)
							{
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 4F481F5F
								/// @DnDInput : 3
								/// @DnDParent : 51824965
								/// @DnDArgument : "expr" "1"
								/// @DnDArgument : "expr_relative" "1"
								/// @DnDArgument : "var" "scrap_on_hand"
								/// @DnDArgument : "var_1" "progress"
								/// @DnDArgument : "var_2" "collector_id.progress"
								scrap_on_hand += 1;
								progress = 0;
								collector_id.progress = 0;
							}
						}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 5AFE3464
						/// @DnDParent : 19A2A01A
						else
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 13BA1FA8
							/// @DnDParent : 5AFE3464
							/// @DnDArgument : "var" "progress"
							progress = 0;
						}
					}
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 48047C20
			/// @DnDParent : 43BCE3E6
			else
			{
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 66AE9778
				/// @DnDParent : 48047C20
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "object" "obj_storage"
				/// @DnDSaveInfo : "object" "687b2afa-ca4a-4ff5-ba1e-024a0351ad39"
				var l66AE9778_0 = instance_place(x + 0, y + 0, obj_storage);
				if ((l66AE9778_0 > 0))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7BFC4E5C
					/// @DnDParent : 66AE9778
					/// @DnDArgument : "expr" "instance_position(x,y,obj_storage)"
					/// @DnDArgument : "var" "storage_id"
					storage_id = instance_position(x,y,obj_storage);
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 55351CD4
					/// @DnDParent : 66AE9778
					/// @DnDArgument : "var" "storage_id"
					/// @DnDArgument : "not" "1"
					/// @DnDArgument : "value" "noone"
					if(!(storage_id == noone))
					{
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 35762A24
						/// @DnDParent : 55351CD4
						/// @DnDArgument : "var" "scrap_on_hand"
						/// @DnDArgument : "op" "1"
						/// @DnDArgument : "value" "global.level_0+1"
						if(scrap_on_hand < global.level_0+1)
						{
							/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 2F68A025
							/// @DnDParent : 35762A24
							/// @DnDArgument : "var" "storage_id.inventory"
							/// @DnDArgument : "op" "2"
							if(storage_id.inventory > 0)
							{
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 16868344
								/// @DnDParent : 2F68A025
								/// @DnDArgument : "expr" "5"
								/// @DnDArgument : "expr_relative" "1"
								/// @DnDArgument : "var" "progress"
								progress += 5;
							
								/// @DnDAction : YoYo Games.Common.If_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 724FF096
								/// @DnDParent : 2F68A025
								/// @DnDArgument : "var" "progress"
								/// @DnDArgument : "value" "100"
								if(progress == 100)
								{
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 0BA5A7C0
									/// @DnDInput : 3
									/// @DnDParent : 724FF096
									/// @DnDArgument : "expr" "1"
									/// @DnDArgument : "expr_relative" "1"
									/// @DnDArgument : "expr_2" "-1"
									/// @DnDArgument : "expr_relative_2" "1"
									/// @DnDArgument : "var" "scrap_on_hand"
									/// @DnDArgument : "var_1" "progress"
									/// @DnDArgument : "var_2" "storage_id.inventory"
									scrap_on_hand += 1;
									progress = 0;
									storage_id.inventory += -1;
								}
							}
						}
					}
				}
			}
		}
	}
}