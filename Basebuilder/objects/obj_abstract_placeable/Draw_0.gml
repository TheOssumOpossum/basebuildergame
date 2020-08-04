/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5BDB09DC
/// @DnDArgument : "var" "global.placing"
/// @DnDArgument : "value" "1"
if(global.placing == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48613DCF
	/// @DnDParent : 5BDB09DC
	/// @DnDArgument : "var" " placed"
	if( placed == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E1FEE25
		/// @DnDParent : 48613DCF
		/// @DnDArgument : "var" "global.scrap"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "cost"
		if(global.scrap < cost)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 0F7DCC97
			/// @DnDParent : 6E1FEE25
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "sprite" "spr_name"
			/// @DnDArgument : "col" "$7F0000FF"
			draw_sprite_ext(spr_name, 0, x + 0, y + 0, 1, 1, 0, $7F0000FF & $ffffff, ($7F0000FF >> 24) / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 043703DD
			/// @DnDDisabled : 1
			/// @DnDParent : 6E1FEE25
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "sprite" "spr_directionalPlacementBox"
			/// @DnDArgument : "image" "1"
			/// @DnDSaveInfo : "sprite" "813dd6f8-3566-4ba6-b280-c046d9956196"
		
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 3E0E4D03
			/// @DnDParent : 6E1FEE25
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "rot" "orientation*90"
			/// @DnDArgument : "sprite" "spr_directionalPlacementBox"
			/// @DnDArgument : "frame" "1"
			/// @DnDArgument : "col" "$7F0000FF"
			/// @DnDSaveInfo : "sprite" "813dd6f8-3566-4ba6-b280-c046d9956196"
			draw_sprite_ext(spr_directionalPlacementBox, 1, x + 0, y + 0, 1, 1, orientation*90, $7F0000FF & $ffffff, ($7F0000FF >> 24) / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Set_Alignment
			/// @DnDVersion : 1.1
			/// @DnDHash : 393B2036
			/// @DnDParent : 6E1FEE25
			/// @DnDArgument : "halign" "fa_center"
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 09B2B830
			/// @DnDParent : 6E1FEE25
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "40"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "caption" ""Insufficient Resources!""
			draw_text(x + 0, y + 40, string("Insufficient Resources!") + "");
		
			/// @DnDAction : YoYo Games.Drawing.Set_Alignment
			/// @DnDVersion : 1.1
			/// @DnDHash : 75DF05C7
			/// @DnDParent : 6E1FEE25
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 404B9963
		/// @DnDParent : 48613DCF
		else
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 3DDF9B90
			/// @DnDParent : 404B9963
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "sprite" "spr_name"
			/// @DnDArgument : "col" "$7FFFFFFF"
			draw_sprite_ext(spr_name, 0, x + 0, y + 0, 1, 1, 0, $7FFFFFFF & $ffffff, ($7FFFFFFF >> 24) / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 65F6F675
			/// @DnDDisabled : 1
			/// @DnDParent : 404B9963
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "sprite" "spr_directionalPlacementBox"
			/// @DnDArgument : "image" "collision"
			/// @DnDSaveInfo : "sprite" "813dd6f8-3566-4ba6-b280-c046d9956196"
		
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 4122CBE3
			/// @DnDParent : 404B9963
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "rot" "orientation*90"
			/// @DnDArgument : "sprite" "spr_directionalPlacementBox"
			/// @DnDArgument : "frame" "collision"
			/// @DnDArgument : "col" "$7F0000FF"
			/// @DnDSaveInfo : "sprite" "813dd6f8-3566-4ba6-b280-c046d9956196"
			draw_sprite_ext(spr_directionalPlacementBox, collision, x + 0, y + 0, 1, 1, orientation*90, $7F0000FF & $ffffff, ($7F0000FF >> 24) / $ff);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1126973F
	/// @DnDParent : 5BDB09DC
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 63724A6A
		/// @DnDParent : 1126973F
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "spr_boundingBox"
		/// @DnDArgument : "image" "collision"
		/// @DnDSaveInfo : "sprite" "203f4ad9-bd2a-47f6-8bc0-d5761c306615"
		draw_sprite(spr_boundingBox, collision, x + 0, y + 0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A6B9E81
/// @DnDArgument : "var" "placed"
/// @DnDArgument : "value" "1"
if(placed == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6937E0F0
	/// @DnDParent : 2A6B9E81
	/// @DnDArgument : "var" "hover"
	/// @DnDArgument : "value" "1"
	if(hover == 1)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 515F2CBD
		/// @DnDParent : 6937E0F0
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 386893DA
		/// @DnDParent : 6937E0F0
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" "desc_name + added_hover_text"
		draw_text(x + 0, y + 40,  + string(desc_name + added_hover_text));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 5321B0D7
		/// @DnDParent : 6937E0F0
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0744D215
	/// @DnDParent : 2A6B9E81
	/// @DnDArgument : "var" "deletion_progress"
	/// @DnDArgument : "op" "2"
	if(deletion_progress > 0)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
		/// @DnDVersion : 1
		/// @DnDHash : 339D8F3D
		/// @DnDParent : 0744D215
		/// @DnDArgument : "x1" "-32"
		/// @DnDArgument : "x1_relative" "1"
		/// @DnDArgument : "y1" "-32"
		/// @DnDArgument : "y1_relative" "1"
		/// @DnDArgument : "x2" "40"
		/// @DnDArgument : "x2_relative" "1"
		/// @DnDArgument : "y2" "-24"
		/// @DnDArgument : "y2_relative" "1"
		/// @DnDArgument : "value" "100-deletion_progress"
		/// @DnDArgument : "backcol" "$00000000"
		/// @DnDArgument : "barcol" "$FF000000"
		/// @DnDArgument : "mincol" "$FF0000FF"
		/// @DnDArgument : "maxcol" "$FF0000FF"
		draw_healthbar(x + -32, y + -32, x + 40, y + -24, 100-deletion_progress, $00000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($00000000>>24) != 0), (($FF000000>>24) != 0));
	}
}