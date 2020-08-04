/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0565C5DB
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_name"
/// @DnDArgument : "image" "(hover & !collision) | collision << 1"
draw_sprite(spr_name, (hover & !collision) | collision << 1, x + 0, y + 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 62DF34DA
/// @DnDArgument : "var" "hover"
/// @DnDArgument : "value" "1"
if(hover == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 32FF5486
	/// @DnDParent : 62DF34DA
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 4F1C8979
	/// @DnDParent : 62DF34DA
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "40"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "desc_name"
	draw_text(x + 0, y + 40,  + string(desc_name));

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 0AAA9B8E
	/// @DnDParent : 62DF34DA
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}