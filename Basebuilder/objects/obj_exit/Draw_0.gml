/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76A3056F
/// @DnDArgument : "var" "global.upgrades_open"
/// @DnDArgument : "value" "1"
if(global.upgrades_open == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 017D3F98
	/// @DnDParent : 76A3056F
	/// @DnDArgument : "color" "$73C0E3E5"
	draw_set_colour($73C0E3E5 & $ffffff);
	var l017D3F98_0=($73C0E3E5 >> 24);
	draw_set_alpha(l017D3F98_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 6A03F9F6
	/// @DnDParent : 76A3056F
	/// @DnDArgument : "x1" "upgrade_left"
	/// @DnDArgument : "y1" "upgrade_top"
	/// @DnDArgument : "x2" "upgrade_right"
	/// @DnDArgument : "y2" "global.upgrade_bottom"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(upgrade_left, upgrade_top, upgrade_right, global.upgrade_bottom, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 51372E7F
	/// @DnDParent : 76A3056F
	draw_set_colour($FFFFFFFF & $ffffff);
	var l51372E7F_0=($FFFFFFFF >> 24);
	draw_set_alpha(l51372E7F_0 / $ff);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 415D7535
/// @DnDArgument : "var" "hover"
/// @DnDArgument : "value" "1"
if(hover == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 708B0E45
	/// @DnDParent : 415D7535
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_exit1"
	/// @DnDArgument : "image" "1"
	/// @DnDSaveInfo : "sprite" "2f6564a3-9858-4f77-8a0a-e6bb7b64f3ef"
	draw_sprite(spr_exit1, 1, x + 0, y + 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 668FFD6C
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 558F723F
	/// @DnDParent : 668FFD6C
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_exit1"
	/// @DnDSaveInfo : "sprite" "2f6564a3-9858-4f77-8a0a-e6bb7b64f3ef"
	draw_sprite(spr_exit1, 0, x + 0, y + 0);
}