if global.math_exam == -1 {
	if global.audit_check == 2 {
		if dialog == 1 then draw_dialog(1, "Здесь будет зачёт по истории и информатике.", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 2 then draw_dialog(1, "Зайду после самого тяжёлого - математики.", boy_sound, 1, dialog_player_smile, "Толя");
		if dialog == 3 {
			global.player_stop = false;
			alarm[0] = room_speed;
			dialog = 999
		}	
	}

	else {
		if dialog == 1 then draw_dialog(1, "Звонка на экзамен ещё не было.", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 2 then draw_dialog(1, "Пойду пострадаю чем-нибудь.", boy_sound, 1, dialog_player_smile, "Толя");
		if dialog == 3 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999
		}		
	}
}

else {
	if global.audit_check < 2 {
		if dialog == 1 then draw_dialog(1, "Звонка на экзамен ещё не было.", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 2 then draw_dialog(1, "Пойду поговорю с ребятами.", boy_sound, 1, dialog_player_smile, "Толя");
		if dialog == 3 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999
		}	
	}
	
}

		if instance_exists(obj_dildo) {
			if dialog == 4 then draw_dialog(1, "Что-то мне нехорошо.", boy_sound, 1, dialog_player_reflection, "Толя");
			if dialog == 5 then draw_dialog(1, "Пойду лучше за шавой.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 6 {
				global.player_stop = false;
				alarm[0] = room_speed;
				dialog = 999
				audio_play_sound(vstat, 1, 0)
				with (obj_dildo) {
					instance_destroy()
				}
				with (obj_dildo_1) {
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
	