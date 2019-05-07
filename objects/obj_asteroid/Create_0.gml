/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 66EA87A0
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 75F70B6E
/// @DnDInput : 3
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "option" "spr_asteroid_small"
/// @DnDArgument : "option_1" "spr_asteroid_medium"
/// @DnDArgument : "option_2" "spr_asteroid_large"
sprite_index = choose(spr_asteroid_small, spr_asteroid_medium, spr_asteroid_large);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 218B076B
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
direction = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 599F49C0
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
image_angle = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 71677102
/// @DnDArgument : "speed" "1"
speed = 1;