/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 3EF27EA9
event_inherited();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 29A98208
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_objects"
/// @DnDArgument : "image" "inventory*2+hover"
/// @DnDSaveInfo : "sprite" "45f2f29a-f121-40fd-aa3c-385e7fe15d6c"
draw_sprite(spr_objects, inventory*2+hover, x + 0, y + 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1516C5C3
/// @DnDArgument : "code" "var highlighted = max(hover,global.placing_conveyor==conveyable)$(13_10)draw_sprite_ext(spr_name,highlighted,x,y,1,1,0,c_white,0.5+placed*0.5)"
var highlighted = max(hover,global.placing_conveyor==conveyable)
draw_sprite_ext(spr_name,highlighted,x,y,1,1,0,c_white,0.5+placed*0.5)

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 344D8CB1
/// @DnDDisabled : 1
/// @DnDArgument : "var" "placed"
/// @DnDArgument : "value" "1"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61CCF2F4
/// @DnDDisabled : 1
/// @DnDParent : 344D8CB1
/// @DnDArgument : "var" "hover"
/// @DnDArgument : "value" "1"
/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 45124D3F
/// @DnDDisabled : 1
/// @DnDParent : 61CCF2F4
/// @DnDArgument : "halign" "fa_center"


/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2EB3B409
/// @DnDDisabled : 1
/// @DnDParent : 61CCF2F4
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "desc_name"


/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0300D2C5
/// @DnDDisabled : 1
/// @DnDParent : 61CCF2F4