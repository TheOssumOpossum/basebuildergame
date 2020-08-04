/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 5E7E70E7
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-15*global.upgrade_scroll+y_anchor"
x += 0;
y = -15*global.upgrade_scroll+y_anchor;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 03D32827
/// @DnDArgument : "code" "hover = point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_width,y+min(global.upgrade_bottom -y,sprite_height))"
hover = point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_width,y+min(global.upgrade_bottom -y,sprite_height))