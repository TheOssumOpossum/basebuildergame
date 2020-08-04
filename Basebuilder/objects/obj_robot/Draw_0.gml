/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 2C39D481
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5554E89B
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l5554E89B_0=($FF000000 >> 24);
draw_set_alpha(l5554E89B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 26201EF5
/// @DnDArgument : "y" "745"
/// @DnDArgument : "caption" ""Game Version: ""
/// @DnDArgument : "var" "global.game_version"
draw_text(0, 745, string("Game Version: ") + string(global.game_version));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 67E7A677
draw_set_colour($FFFFFFFF & $ffffff);
var l67E7A677_0=($FFFFFFFF >> 24);
draw_set_alpha(l67E7A677_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4F0FF83C
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "caption" ""Scrap: ""
/// @DnDArgument : "var" "global.scrap"
draw_text(32, 32, string("Scrap: ") + string(global.scrap));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4B9AFC38
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "64"
/// @DnDArgument : "caption" ""Scrap on Hand: ""
/// @DnDArgument : "var" "string(scrap_on_hand) + " / " + string(global.level_0+1)"
draw_text(32, 64, string("Scrap on Hand: ") + string(string(scrap_on_hand) + " / " + string(global.level_0+1)));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 72D4D062
/// @DnDDisabled : 1
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "96"
/// @DnDArgument : "caption" ""test variable: ""
/// @DnDArgument : "var" "global.upgrade_scroll"


/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5659EEDC
/// @DnDDisabled : 1
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "96"
/// @DnDArgument : "caption" ""x_mov: ""
/// @DnDArgument : "var" "x_move "


/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 48C83660
/// @DnDDisabled : 1
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "128"
/// @DnDArgument : "caption" ""y_mov: ""
/// @DnDArgument : "var" "y_move"


/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1681F854
/// @DnDDisabled : 1
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "160"
/// @DnDArgument : "caption" ""X: ""
/// @DnDArgument : "var" "x"


/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4D2BE133
/// @DnDDisabled : 1
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "192"
/// @DnDArgument : "caption" ""y: ""
/// @DnDArgument : "var" "y"


/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3EEB40DF
/// @DnDDisabled : 1
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "224"
/// @DnDArgument : "caption" ""diff from loc: ""
/// @DnDArgument : "var" "min_move_diff "


/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4B404025
/// @DnDDisabled : 1
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "256"
/// @DnDArgument : "caption" ""progress: ""
/// @DnDArgument : "var" "progress "


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11941F02
/// @DnDArgument : "var" "progress"
/// @DnDArgument : "not" "1"
if(!(progress == 0))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 119D679C
	/// @DnDParent : 11941F02
	/// @DnDArgument : "x1" "-sprite_width/2"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "-sprite_height/2-16"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "sprite_width/2"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "-sprite_height/2-8"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "value" "progress"
	/// @DnDArgument : "backcol" "$FF000000"
	/// @DnDArgument : "barcol" "$FF000000"
	/// @DnDArgument : "mincol" "$FF6DFF9E"
	/// @DnDArgument : "maxcol" "$FF6DFF9E"
	draw_healthbar(x + -sprite_width/2, y + -sprite_height/2-16, x + sprite_width/2, y + -sprite_height/2-8, progress, $FF000000 & $FFFFFF, $FF6DFF9E & $FFFFFF, $FF6DFF9E & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
}