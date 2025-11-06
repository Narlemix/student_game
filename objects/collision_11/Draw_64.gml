var fade_started = obj_scene_manager.scene_active
if loop_past == 0 {
	if dialog == 1 then draw_dialog(1, "Здравствуй.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 2 then draw_dialog(1, "Здравствуйте.", boy_sound, 1, dialog_player_smile, "Толя");
	if historyman.choice_music == 2 and (dialog == 3 or dialog == 4){
	if dialog == 3 then draw_dialog(1, "Это вы музыку включали, когда я отвечал Дубославскому?", boy_sound, 1, dialog_player_smile, "Толя");
	if dialog == 4 then draw_dialog(1, "Возможно.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	}
	else if dialog == 3 {
	dialog = 5
	}
	if dialog == 5 then draw_dialog(1, "Тогда приступим к делу?", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 6 then draw_dialog(1, "Мне билет взять?", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 7 then draw_dialog(1, "А ты видишь билеты на столе?", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 8 then draw_dialog(1, "Да нет, вроде.", boy_sound, 1, dialog_player_reflection, "Толя");
	if dialog == 9 then draw_dialog(1, "Ну да, их здесь нет.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 10 then draw_dialog(1, "И что мне делать тогда?", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 11 then draw_dialog(1, "Ноутбуки кончились.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 12 then draw_dialog(1, "И?", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 13 then draw_dialog(1, "Ты можешь подождать или порешать прототипы заданий на этом компьютере.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 14 then draw_dialog(1, "Заодно проверишь можно ли их решить, я сам не проверял.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 15 {
		draw_dialog_options(1, "Что выберет Толя?", boy_sound, 1, empty, ["Подождать ноутбук", "Помочь Шкадинову"]);
		choice_1 = global.selected_choice + 1 
	 }
	 if choice_1 == 1 {
		if dialog == 16 then draw_dialog(1, "Я всё-таки подожду ноутбук.", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 17 then draw_dialog(1, "Уверен?", man_sound, 1, infoman_face, "Алексей Сергеевич");
		if dialog == 18 then draw_dialog_options(1, "Что выберет Толя?", boy_sound, 1, empty, ["Помочь Шкадинову", "Помочь Шкадинову"]);
		if dialog == 19 then draw_dialog(1, "Хороший выбор.", man_sound, 1, infoman_face, "Алексей Сергеевич");
		if dialog == 20 then draw_dialog(1, "...", boy_sound, 1, dialog_player_confusion, "Толя");
	 }
	 else if choice_1 == 2 {
		if dialog == 16 then draw_dialog(1, "Я вам помогу.", boy_sound, 1, dialog_player_stack, "Толя"); 
		if dialog == 17 then draw_dialog(1, "Хороший выбор.", man_sound, 1, infoman_face, "Алексей Сергеевич");
		if dialog == 18 then dialog = 21
	 }
	 if dialog == 21 and !fade_started {
		scene_fade_in(blackground_big);
		fade_started = true;
		alarm[0] = room_speed;
		dialog = 999
		alarm[1] = room_speed * 1.5
	 }
}

else {
	if dialog == 1 then draw_dialog(1, "Всего хорошего!", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 2 {
	global.player_stop = false;
	alarm[0] = room_speed;
	dialog = 999
	}
}