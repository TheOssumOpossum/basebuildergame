/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5FE740BA
/// @DnDInput : 8
/// @DnDArgument : "expr_2" "242"
/// @DnDArgument : "expr_4" "room_width"
/// @DnDArgument : "expr_6" "10"
/// @DnDArgument : "expr_7" "global.upgrade_bottom"
/// @DnDArgument : "var" "interactable"
/// @DnDArgument : "var_1" "hover"
/// @DnDArgument : "var_2" "upgrade_left"
/// @DnDArgument : "var_3" "upgrade_top"
/// @DnDArgument : "var_4" "upgrade_right"
/// @DnDArgument : "var_5" "upgrade_scroll_min"
/// @DnDArgument : "var_6" "upgrade_scroll_max"
/// @DnDArgument : "var_7" "upgrade_bottom"
interactable = 0;
hover = 0;
upgrade_left = 242;
upgrade_top = 0;
upgrade_right = room_width;
upgrade_scroll_min = 0;
upgrade_scroll_max = 10;
upgrade_bottom = global.upgrade_bottom;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6DCCFA1D
/// @DnDArgument : "steps" "10"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 10);