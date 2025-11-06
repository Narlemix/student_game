if loop_past == 0 {
	if dialog == 1 then draw_dialog(1, "Эй. Ты чего?", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 2 then draw_dialog(1, "*всхлип* Это невозможно решить!", woman_sound, 1, empty, "Плачующая девочка");
	if dialog == 3 then draw_dialog(1, "Тише-тише.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 4 then draw_dialog(1, "Я ненавижу её...", woman_sound, 1, empty, "Плачующая девочка");
	if dialog == 5 then draw_dialog(1, "Так спиши.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 6 then draw_dialog(1, "Я...", woman_sound, 1, empty, "Плачующая девочка");
	if dialog == 7 then draw_dialog(1, "Я не могу...", woman_sound, 1, empty, "Плачующая девочка");
	if dialog == 8 then draw_dialog(1, "Она смотрит на меня.", woman_sound, 1, empty, "Плачующая девочка");
	if dialog == 9 then draw_dialog(1, "Он... Такой страшный. Её взгляд...", woman_sound, 1, empty, "Плачующая девочка");
	if dialog == 10 then draw_dialog(1, "Она не смотрит на тебя.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 11 then draw_dialog(1, "Тем более я загораживаю её кругозор.", boy_sound, 1, dialog_player_smile, "Толя");
	if dialog == 12 then draw_dialog(1, "Она смотрит через тебя...", woman_sound, 1, empty, "Плачующая девочка");
	if dialog == 13 then draw_dialog(1, "Боже.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 14 then draw_dialog(1, "Я здесь бессилен.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 15 then draw_dialog(1, "Уйди... Ты её начинаешь злить...", woman_sound, 1, empty, "Плачующая девочка");
	if dialog == 16 then draw_dialog(1, "Ага.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 17 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999
		loop_past = 1
	}
}
else {
	if dialog == 1 then draw_dialog(1, "Её взгляд...", woman_sound, 1, empty, "Плачующая девочка");
	if dialog == 2 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999	
	}
}