/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3929AC3D
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1BBF75C4
	/// @DnDParent : 3929AC3D
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 2B216AC6
		/// @DnDParent : 1BBF75C4
		/// @DnDArgument : "soundid" "msc_song"
		/// @DnDSaveInfo : "soundid" "2f4944cc-ed30-4ce9-beca-d1771b4d2bad"
		audio_stop_sound(msc_song);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 180644DA
		/// @DnDParent : 1BBF75C4
		/// @DnDArgument : "room" "rm_game_win"
		/// @DnDSaveInfo : "room" "4acad9f7-9b09-464b-9e71-a5e5d0435047"
		room_goto(rm_game_win);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 775BEC8E
		/// @DnDParent : 1BBF75C4
		/// @DnDArgument : "soundid" "snd_win"
		/// @DnDSaveInfo : "soundid" "14d71657-fe3c-4f1d-ab32-2ccc3d42ea63"
		audio_play_sound(snd_win, 0, 0);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 541388F3
	/// @DnDParent : 3929AC3D
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 555424BB
		/// @DnDParent : 541388F3
		/// @DnDArgument : "soundid" "msc_song"
		/// @DnDSaveInfo : "soundid" "2f4944cc-ed30-4ce9-beca-d1771b4d2bad"
		audio_stop_sound(msc_song);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 5648EC11
		/// @DnDParent : 541388F3
		/// @DnDArgument : "room" "rm_game_over"
		/// @DnDSaveInfo : "room" "aae2bf37-80a4-48fc-9c81-4425705dfc15"
		room_goto(rm_game_over);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 1F1EAAC9
		/// @DnDParent : 541388F3
		/// @DnDArgument : "soundid" "snd_lose"
		/// @DnDSaveInfo : "soundid" "ca509561-7b77-439b-8aed-aebcaa764c1d"
		audio_play_sound(snd_lose, 0, 0);
	}
}