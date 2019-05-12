/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6BA20403
/// @DnDArgument : "soundid" "snd_zap"
/// @DnDSaveInfo : "soundid" "b75baa73-86a0-4591-ba8f-18c665df894b"
audio_play_sound(snd_zap, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0D3D9055
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newBullet"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_bullet"
/// @DnDSaveInfo : "objectid" "4d1a2d3d-c795-4d9e-949f-54bf97a9ce91"
var newBullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 14B1DB98
/// @DnDArgument : "expr" "image_angle"
/// @DnDArgument : "var" "newBullet.direction"
newBullet.direction = image_angle;