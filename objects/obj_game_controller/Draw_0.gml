/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 17A7A0D9
/// @DnDArgument : "expr" "room"
var l17A7A0D9_0 = room;
switch(l17A7A0D9_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 35CE63CF
	/// @DnDParent : 17A7A0D9
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 6418A639
		/// @DnDParent : 35CE63CF
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 5D39446A
		/// @DnDParent : 35CE63CF
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "c569c8b8-9edf-4046-8361-76107e84d76c"
		var l5D39446A_0 = sprite_get_width(spr_lives);
		var l5D39446A_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l5D39446A_2 = __dnd_lives; l5D39446A_2 > 0; --l5D39446A_2) {
			draw_sprite(spr_lives, 0, 20 + l5D39446A_1, 40);
			l5D39446A_1 += l5D39446A_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 51D8846E
	/// @DnDParent : 17A7A0D9
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 7F4FE635
		/// @DnDParent : 51D8846E
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 101554EC
		/// @DnDParent : 51D8846E
		/// @DnDArgument : "color" "$FF07F2FF"
		draw_set_colour($FF07F2FF & $ffffff);
		var l101554EC_0=($FF07F2FF >> 24);
		draw_set_alpha(l101554EC_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 05247BF8
		/// @DnDParent : 51D8846E
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""Asteroids""
		draw_text_transformed(250, 100, string("Asteroids") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7CB00260
		/// @DnDParent : 51D8846E
		draw_set_colour($FFFFFFFF & $ffffff);
		var l7CB00260_0=($FFFFFFFF >> 24);
		draw_set_alpha(l7CB00260_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5AF76490
		/// @DnDParent : 51D8846E
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1,000 points to win!""
		draw_text(250, 200, string("Score 1,000 points to win!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 69D222FA
		/// @DnDParent : 51D8846E
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""UP: move""
		draw_text(250, 230, string("UP: move") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 48703509
		/// @DnDParent : 51D8846E
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""LEFT/RIGHT : turn""
		draw_text(250, 260, string("LEFT/RIGHT : turn") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1F997F18
		/// @DnDParent : 51D8846E
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "290"
		/// @DnDArgument : "caption" ""SPACE: shoot""
		draw_text(250, 290, string("SPACE: shoot") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 77E29AC7
		/// @DnDParent : 51D8846E
		/// @DnDArgument : "color" "$FF07F2FF"
		draw_set_colour($FF07F2FF & $ffffff);
		var l77E29AC7_0=($FF07F2FF >> 24);
		draw_set_alpha(l77E29AC7_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 7E136389
		/// @DnDParent : 51D8846E
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO START <<""
		draw_text(250, 350, string(">> PRESS ENTER TO START <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 69338C06
		/// @DnDParent : 51D8846E
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3135070F
		/// @DnDParent : 51D8846E
		draw_set_colour($FFFFFFFF & $ffffff);
		var l3135070F_0=($FFFFFFFF >> 24);
		draw_set_alpha(l3135070F_0 / $ff);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0A085B2B
	/// @DnDParent : 17A7A0D9
	/// @DnDArgument : "const" "rm_game_over"
	case rm_game_over:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6B1AA08F
		/// @DnDParent : 0A085B2B
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4C7D5F6E
		/// @DnDParent : 0A085B2B
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l4C7D5F6E_0=($FF0000FF >> 24);
		draw_set_alpha(l4C7D5F6E_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 01509E29
		/// @DnDParent : 0A085B2B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""Game Over""
		draw_text_transformed(250, 100, string("Game Over") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 08602910
		/// @DnDParent : 0A085B2B
		draw_set_colour($FFFFFFFF & $ffffff);
		var l08602910_0=($FFFFFFFF >> 24);
		draw_set_alpha(l08602910_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 3496B594
		/// @DnDParent : 0A085B2B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 200, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5D792FBC
		/// @DnDParent : 0A085B2B
		/// @DnDArgument : "color" "$FF07F2FF"
		draw_set_colour($FF07F2FF & $ffffff);
		var l5D792FBC_0=($FF07F2FF >> 24);
		draw_set_alpha(l5D792FBC_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5CBAE472
		/// @DnDParent : 0A085B2B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART <<""
		draw_text(250, 250, string(">> PRESS ENTER TO RESTART <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 694FC26D
		/// @DnDParent : 0A085B2B
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6C01D4D1
		/// @DnDParent : 0A085B2B
		draw_set_colour($FFFFFFFF & $ffffff);
		var l6C01D4D1_0=($FFFFFFFF >> 24);
		draw_set_alpha(l6C01D4D1_0 / $ff);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7CDED632
	/// @DnDParent : 17A7A0D9
	/// @DnDArgument : "const" "rm_game_win"
	case rm_game_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 1FC18FC6
		/// @DnDParent : 7CDED632
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 41B9832A
		/// @DnDParent : 7CDED632
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l41B9832A_0=($FF00FF00 >> 24);
		draw_set_alpha(l41B9832A_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 2B4EA883
		/// @DnDParent : 7CDED632
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN""
		draw_text_transformed(250, 100, string("YOU WIN") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3038A181
		/// @DnDParent : 7CDED632
		draw_set_colour($FFFFFFFF & $ffffff);
		var l3038A181_0=($FFFFFFFF >> 24);
		draw_set_alpha(l3038A181_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 76EAFA6D
		/// @DnDParent : 7CDED632
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 200, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 744FD287
		/// @DnDParent : 7CDED632
		/// @DnDArgument : "color" "$FF07F2FF"
		draw_set_colour($FF07F2FF & $ffffff);
		var l744FD287_0=($FF07F2FF >> 24);
		draw_set_alpha(l744FD287_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3A99736F
		/// @DnDParent : 7CDED632
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART <<""
		draw_text(250, 250, string(">> PRESS ENTER TO RESTART <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 79A6DCF0
		/// @DnDParent : 7CDED632
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 06CFA502
		/// @DnDParent : 7CDED632
		draw_set_colour($FFFFFFFF & $ffffff);
		var l06CFA502_0=($FFFFFFFF >> 24);
		draw_set_alpha(l06CFA502_0 / $ff);
		break;
}