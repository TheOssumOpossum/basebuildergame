/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 6CEE7D4F
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2850560B
/// @DnDArgument : "var" "interactable"
/// @DnDArgument : "op" "2"
if(interactable > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41F27DAF
	/// @DnDDisabled : 1
	/// @DnDParent : 2850560B
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "interactable"
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 592567F1
/// @DnDDisabled : 1
/// @DnDArgument : "var" "placed"
/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 1B4A2A3D
/// @DnDDisabled : 1
/// @DnDParent : 592567F1
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 15CD1431
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74E8ED9C
	/// @DnDParent : 15CD1431
	/// @DnDArgument : "var" "progress"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "100"
	if(progress < 100)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74482131
		/// @DnDParent : 74E8ED9C
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "rot"
		rot += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62532AD7
		/// @DnDParent : 74E8ED9C
		/// @DnDArgument : "expr" "0.25"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "progress"
		progress += 0.25;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 72E30C8A
	/// @DnDParent : 15CD1431
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 51A2EC21
		/// @DnDParent : 72E30C8A
		/// @DnDArgument : "var" "deliver_to"
		/// @DnDArgument : "not" "1"
		if(!(deliver_to == 0))
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6434596A
			/// @DnDParent : 51A2EC21
			/// @DnDArgument : "var" "(deliver_to).inventory"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "(deliver_to).capacity"
			if((deliver_to).inventory < (deliver_to).capacity)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3B3EFAD2
				/// @DnDParent : 6434596A
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "(deliver_to).inventory"
				(deliver_to).inventory += 1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0CB3065B
				/// @DnDParent : 6434596A
				/// @DnDArgument : "var" "progress"
				progress = 0;
			}
		}
	}
}