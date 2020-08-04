/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BAF97B1
/// @DnDArgument : "var" "global.upgrades_open"
/// @DnDArgument : "value" "1"
if(global.upgrades_open == 1)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 056067FA
	/// @DnDParent : 1BAF97B1
	/// @DnDArgument : "code" "draw_sprite_part(spr_upgrade, hover, 0, 0, sprite_width, min(sprite_height,global.upgrade_bottom-y) ,  x, y);"
	draw_sprite_part(spr_upgrade, hover, 0, 0, sprite_width, min(sprite_height,global.upgrade_bottom-y) ,  x, y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D7F4D35
	/// @DnDParent : 1BAF97B1
	/// @DnDArgument : "var" "type"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "3"
	if(!(type == 3))
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2CC08269
		/// @DnDParent : 2D7F4D35
		/// @DnDArgument : "x" "80"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "16"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""(cost ""
		/// @DnDArgument : "var" "string(cost) + ")""
		draw_text(x + 80, y + 16, string("(cost ") + string(string(cost) + ")"));
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5FE97807
	/// @DnDParent : 1BAF97B1
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 20C30CF4
		/// @DnDParent : 5FE97807
		/// @DnDArgument : "x" "80"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "16"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""(cost ""
		/// @DnDArgument : "var" "string(cost) + "/m)""
		draw_text(x + 80, y + 16, string("(cost ") + string(string(cost) + "/m)"));
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50C76D8D
	/// @DnDParent : 1BAF97B1
	/// @DnDArgument : "var" "type"
	if(type == 0)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3F8C824D
		/// @DnDParent : 50C76D8D
		/// @DnDArgument : "x" "80"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" ""Purchase scrap collector""
		draw_text(x + 80, y + 0,  + string("Purchase scrap collector"));
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6697EB70
	/// @DnDParent : 1BAF97B1
	/// @DnDArgument : "var" "type"
	/// @DnDArgument : "value" "1"
	if(type == 1)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1BFBA5EC
		/// @DnDParent : 6697EB70
		/// @DnDArgument : "x" "80"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" ""Upgrade scrap carrying capacity""
		draw_text(x + 80, y + 0,  + string("Upgrade scrap carrying capacity"));
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47648958
	/// @DnDParent : 1BAF97B1
	/// @DnDArgument : "var" "type"
	/// @DnDArgument : "value" "2"
	if(type == 2)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 48DAA30B
		/// @DnDParent : 47648958
		/// @DnDArgument : "x" "80"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" ""Purchase storage unit""
		draw_text(x + 80, y + 0,  + string("Purchase storage unit"));
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AE719E6
	/// @DnDParent : 1BAF97B1
	/// @DnDArgument : "var" "type"
	/// @DnDArgument : "value" "3"
	if(type == 3)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 17169F9B
		/// @DnDParent : 3AE719E6
		/// @DnDArgument : "x" "80"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" ""Purchase conveyor belt <not available>""
		draw_text(x + 80, y + 0,  + string("Purchase conveyor belt <not available>"));
	}
}