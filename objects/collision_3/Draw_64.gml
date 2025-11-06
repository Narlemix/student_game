if global.math_exam == 0 {
	if dialog == 1 then draw_dialog(1, "Я не буду вновь беспокоить древнее зло.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 2 then draw_dialog(1, "You shall not pass!", boy_sound, 1, dialog_player_smile, "Толя");
	if dialog == 3 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999
		}	
}

else if global.math_exam == 1 {
	if dialog == 1 then draw_dialog(1, "Дважды в одну реку не войдёшь.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 2 then draw_dialog(1, "По крайней мере, рисковать не буду.", boy_sound, 1, dialog_player_smile, "Толя");
	if dialog == 3 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999
		}	
}


else if global.audit_check < 2 {
		if dialog == 1 then draw_dialog(1, "Звонка на экзамен ещё не было.", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 2 then draw_dialog(1, "Пойду пострадаю чем-нибудь.", boy_sound, 1, dialog_player_smile, "Толя");
		if dialog == 3 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999
		}		
	}


		if instance_exists(obj_gold_table) {
			if dialog == 4 then draw_dialog(1, "Что-то мне нехорошо.", boy_sound, 1, dialog_player_reflection, "Толя");
			if dialog == 5 then draw_dialog(1, "Надо бы поесть...", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 6 {
				global.player_stop = false;
				alarm[0] = room_speed;
				dialog = 999
				audio_play_sound(vstat, 1, 0)
				with (obj_gold_table) {
					instance_destroy()
				}
				with (collision_14) {
					instance_destroy()
				}
			}
		}
		else {
			if dialog == 4 then draw_dialog(1, "Нет.", boy_sound, 1, dialog_player_reflection, "Толя");
			if dialog == 5 then draw_dialog(1, "Пока.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 6 {
				global.player_stop = false;
				alarm[0] = room_speed;
				dialog = 999
				
			}
		}
	