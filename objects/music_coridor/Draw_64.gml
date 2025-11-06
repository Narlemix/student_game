if flag_message_ring == 1 {
	global.flag_message_after_ring = 1;
	if global.math_exam == -1 {
		if dialog == 1 then draw_dialog(1, "Вот и звонок. Пора на матешу.", boy_sound, 1, dialog_player_reflection, "Толя");
		if dialog == 2 then draw_dialog(1, "Дай бог мне здоровья.", boy_sound, 1, dialog_player_smile, "Толя");
	}
	else {
		if dialog == 1 then draw_dialog(1, "Ну-с. История с информатикой ждите меня.", boy_sound, 1, dialog_player_reflection, "Толя");
		if dialog == 2 then draw_dialog(1, "Надеюсь будет попроще.", boy_sound, 1, dialog_player_reflection, "Толя");
	}
		if dialog == 3 {
			flag_message_ring = 0;
			global.player_stop = false;
			alarm[0] = room_speed;
			dialog = 999
			global.flag_message_after_ring = 0
		}
	
	
}