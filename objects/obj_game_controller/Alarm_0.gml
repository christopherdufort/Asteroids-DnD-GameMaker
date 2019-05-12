/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 526F6BE8
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_game"
if(!(room == rm_game))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 28A46930
	/// @DnDParent : 526F6BE8
	exit;
}

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 784D10D9
/// @DnDInput : 2
/// @DnDArgument : "var" "choice"
/// @DnDArgument : "option_1" "1"
choice = choose(0, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6DF0A0DA
/// @DnDArgument : "var" "choice"
if(choice == 0)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 5AF4208C
	/// @DnDInput : 2
	/// @DnDParent : 6DF0A0DA
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_width"
	var xx = choose(room_width, 0);

	/// @DnDAction : YoYo Games.Random.Randomize
	/// @DnDVersion : 1
	/// @DnDHash : 1202C020
	/// @DnDParent : 6DF0A0DA
	randomize();

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 0CCD1A0A
	/// @DnDParent : 6DF0A0DA
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_height"
	var yy = floor(random_range(0, room_height + 1));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3B6D6380
else
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 21823773
	/// @DnDInput : 2
	/// @DnDParent : 3B6D6380
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_height"
	var yy = choose(room_height, 0);

	/// @DnDAction : YoYo Games.Random.Randomize
	/// @DnDVersion : 1
	/// @DnDHash : 2761998E
	/// @DnDParent : 3B6D6380
	randomize();

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 43B0B91C
	/// @DnDParent : 3B6D6380
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_width"
	var xx = floor(random_range(0, room_width + 1));
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 35D623C2
/// @DnDArgument : "xpos" "xx"
/// @DnDArgument : "ypos" "yy"
/// @DnDArgument : "objectid" "obj_asteroid"
/// @DnDSaveInfo : "objectid" "731e61b8-1bc8-46a7-9fdf-1093cc541388"
instance_create_layer(xx, yy, "Instances", obj_asteroid);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 04389B5F
/// @DnDArgument : "steps" "60*6"
alarm_set(0, 60*6);