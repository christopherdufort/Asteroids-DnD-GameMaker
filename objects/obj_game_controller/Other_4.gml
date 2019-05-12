/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09F247E8
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 1F45A9D2
	/// @DnDParent : 09F247E8
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "2f4944cc-ed30-4ce9-beca-d1771b4d2bad"
	var l1F45A9D2_0 = msc_song;
	if (audio_is_playing(l1F45A9D2_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 655A79A9
		/// @DnDParent : 1F45A9D2
		/// @DnDArgument : "soundid" "msc_song"
		/// @DnDSaveInfo : "soundid" "2f4944cc-ed30-4ce9-beca-d1771b4d2bad"
		audio_stop_sound(msc_song);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5B7CC920
	/// @DnDParent : 09F247E8
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "2f4944cc-ed30-4ce9-beca-d1771b4d2bad"
	audio_play_sound(msc_song, 0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 357130C0
	/// @DnDParent : 09F247E8
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 4F0634B5
	/// @DnDParent : 09F247E8
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 74EF1B50
		/// @DnDInput : 2
		/// @DnDParent : 4F0634B5
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B9E588A
		/// @DnDParent : 4F0634B5
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Randomize
			/// @DnDVersion : 1
			/// @DnDHash : 62545768
			/// @DnDParent : 1B9E588A
			randomize();
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 060BB42F
			/// @DnDParent : 1B9E588A
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			var xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 208C2DB5
		/// @DnDParent : 4F0634B5
		else
		{
			/// @DnDAction : YoYo Games.Random.Randomize
			/// @DnDVersion : 1
			/// @DnDHash : 76D0FC54
			/// @DnDParent : 208C2DB5
			randomize();
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 20BCFE2B
			/// @DnDParent : 208C2DB5
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width*0.7"
			var xx = floor(random_range(room_width*0.7, 1 + 1));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 5B4A993D
		/// @DnDInput : 2
		/// @DnDParent : 4F0634B5
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2891D891
		/// @DnDParent : 4F0634B5
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Randomize
			/// @DnDVersion : 1
			/// @DnDHash : 781913A1
			/// @DnDParent : 2891D891
			randomize();
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 25420914
			/// @DnDParent : 2891D891
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			var yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2D635856
		/// @DnDParent : 4F0634B5
		else
		{
			/// @DnDAction : YoYo Games.Random.Randomize
			/// @DnDVersion : 1
			/// @DnDHash : 1FE6DEF0
			/// @DnDParent : 2D635856
			randomize();
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 21854F83
			/// @DnDParent : 2D635856
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height*0.7"
			/// @DnDArgument : "max" "room_height"
			var yy = floor(random_range(room_height*0.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2C115117
		/// @DnDParent : 4F0634B5
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "731e61b8-1bc8-46a7-9fdf-1093cc541388"
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
}