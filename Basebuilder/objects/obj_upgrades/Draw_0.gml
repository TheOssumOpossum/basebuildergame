/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76A3056F
/// @DnDArgument : "var" "global.upgrades_open"
if(global.upgrades_open == 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6C7EA5D9
	/// @DnDParent : 76A3056F
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_upgrades"
	/// @DnDArgument : "image" "hover"
	/// @DnDSaveInfo : "sprite" "e9e62eda-84d4-4e3a-bacc-0aaa42689333"
	draw_sprite(spr_upgrades, hover, x + 0, y + 0);
}