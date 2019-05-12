/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 58D3DF2E
/// @DnDArgument : "soundid" "snd_die"
/// @DnDSaveInfo : "soundid" "2a356dbb-17fe-4de7-8b65-081dd27c0780"
audio_play_sound(snd_die, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 1201A703
/// @DnDApplyTo : 36f40f0c-4565-4fff-bf09-bc9f1c6c06e1
with(obj_game_controller) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 0ECC4D6C
	/// @DnDParent : 1201A703
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 14329661
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4525E406
/// @DnDApplyTo : 36f40f0c-4565-4fff-bf09-bc9f1c6c06e1
with(obj_game_controller) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6A97530E
	/// @DnDParent : 4525E406
	/// @DnDArgument : "steps" "90"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 90);
}

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 7E535691
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 077CA174
	/// @DnDParent : 7E535691
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "24e6afc4-b854-4851-a501-6dae2209f484"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}