/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4ECDA49D
/// @DnDArgument : "expr" "room"
var l4ECDA49D_0 = room;
switch(l4ECDA49D_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4BE0344B
	/// @DnDParent : 4ECDA49D
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 02AD6383
		/// @DnDParent : 4BE0344B
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "8e1cdbe6-f757-4af3-8893-edb8cace0fce"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1CD4064A
	/// @DnDParent : 4ECDA49D
	/// @DnDArgument : "const" "rm_game_over"
	case rm_game_over:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 6C722E2D
		/// @DnDParent : 1CD4064A
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7CC2C560
	/// @DnDParent : 4ECDA49D
	/// @DnDArgument : "const" "rm_game_win"
	case rm_game_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 07BED834
		/// @DnDParent : 7CC2C560
		game_restart();
		break;
}