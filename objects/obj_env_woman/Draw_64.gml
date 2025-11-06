if global.count_to_exit == 7 {
	if dialog == 1 then draw_dialog(1, "О привет! Ты тоже на пересдачу?", woman_sound, 1, empty, "Девушка");
	if dialog == 2 then draw_dialog(1, "Нет.", boy_sound, 1, dialog_player_smile, "Толя");
	if dialog == 3 then draw_dialog(1, "Пока.", boy_sound, 1, dialog_player_smile, "Толя");
	if dialog == 4 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999
		loop_past = 1
	}
}
else {
	if loop_past == 0 {	
		if global.math_exam == 0 {
			if dialog == 1 then draw_dialog(1, "Привет! Как прошёл первый экзамен?", woman_sound, 1, empty, "Девушка");
			if dialog == 2 then draw_dialog(1, "Честно говоря, не очень. Завалили меня.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 3 then draw_dialog(1, "Ой, бедняга. Ну это нормально.", woman_sound, 1, empty, "Девушка");
			if dialog == 4 then draw_dialog(1, "Наша математичка очень злая.", woman_sound, 1, empty, "Девушка");
			if dialog == 5 then draw_dialog(1, "Да я заметил.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 6 then draw_dialog(1, "Она в этом вузе преподаёт уже десятки лет, а выглядит лет на 30.", woman_sound, 1, empty, "Девушка");
			if dialog == 7 then draw_dialog(1, "Девочки говорят, что она питает силы от молодой крови студентов.", woman_sound, 1, empty, "Девушка");
			if dialog == 8 then draw_dialog(1, "Ха-ха. Я бы не удивился. Типа как Дементор души?", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 9 then draw_dialog(1, "Кстати говоря, можно вопрос?", boy_sound, 1, dialog_player_confusion, "Толя");
			if dialog == 10 then draw_dialog(1, "Ну-ка, давай!", woman_sound, 1, empty, "Девушка");
			if dialog == 11 then draw_dialog(1, "Я уже успел закончить первый экзамен, а ты до сих пор тут сидишь.", boy_sound, 1, dialog_player_confusion, "Толя");
			if dialog == 12 then draw_dialog(1, "Так чем ты занимаешься?", boy_sound, 1, dialog_player_confusion, "Толя");
			if dialog == 13 then draw_dialog(1, "Прячусь от фикусов.", woman_sound, 1, empty, "Девушка");
			if dialog == 14 then draw_dialog(1, "Ха-ха.", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 15 then draw_dialog(1, "Чего?", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 16 then draw_dialog(1, "Не подходи к фикусам!", woman_sound, 1, empty, "Девушка");
			if dialog == 17 then draw_dialog(1, "Эм...", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 18 then draw_dialog(1, "Ладно.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 19 {
				global.audit_check += 1;
				global.player_stop = false;
				alarm[0] = room_speed;
				dialog = 999
				loop_past = 1
			}
		}
		
		
		else if global.math_exam == 1 {
			if dialog == 1 then draw_dialog(1, "Привет! Как прошёл первый экзамен?", woman_sound, 1, empty, "Девушка");
			if dialog == 2 then draw_dialog(1, "Всё прошло отлично. Сдал я!", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 3 then draw_dialog(1, "О-о-о. Молодец!", woman_sound, 1, empty, "Девушка");
			if dialog == 4 then draw_dialog(1, "Видно даже у дьявола бывают выходные.", woman_sound, 1, empty, "Девушка");
			if dialog == 5 then draw_dialog(1, "Скорее отпуск и дешёвые путёвки.", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 6 then draw_dialog(1, "Ха-ха. Точно-точно.", woman_sound, 1, empty, "Девушка");
			if dialog == 7 then draw_dialog(1, "Неужели она тебя так просто отпустила с нерастерзанной душой?", woman_sound, 1, empty, "Девушка");
			if dialog == 8 then draw_dialog(1, "Конечно пыталась что-то придумать для моей казни за слишком правильные ответы.", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 9 then draw_dialog(1, "Но всё обошлось.", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 10 then draw_dialog(1, "Кстати говоря, можно вопрос?", boy_sound, 1, dialog_player_confusion, "Толя");
			if dialog == 11 then draw_dialog(1, "Ну-ка, давай!", woman_sound, 1, empty, "Девушка");
			if dialog == 12 then draw_dialog(1, "Я уже успел закончить первый экзамен, а ты до сих пор тут сидишь.", boy_sound, 1, dialog_player_confusion, "Толя");
			if dialog == 13 then draw_dialog(1, "Так чем ты занимаешься?", boy_sound, 1, dialog_player_confusion, "Толя");
			if dialog == 14 then draw_dialog(1, "Прячусь от фикусов.", woman_sound, 1, empty, "Девушка");
			if dialog == 15 then draw_dialog(1, "Ха-ха.", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 16 then draw_dialog(1, "Чего?", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 17 then draw_dialog(1, "Не подходи к фикусам!", woman_sound, 1, empty, "Девушка");
			if dialog == 18 then draw_dialog(1, "Эм...", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 19 then draw_dialog(1, "Ладно.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 20 {
				global.audit_check += 1;
				global.player_stop = false;
				alarm[0] = room_speed;
				dialog = 999
				loop_past = 1
			}
		}
	
		else {
			if dialog == 1 then draw_dialog(1, "О привет! Ты тоже на пересдачу?", woman_sound, 1, empty, "Девушка");
			if dialog == 2 then draw_dialog(1, "Небось весь семестр дома отсиживался?", woman_sound, 1, empty, "Девушка");
			if dialog == 3 then draw_dialog(1, "Неправда, не весь!", boy_sound, 1, dialog_player_surprise, "Толя");
			if dialog == 4 then draw_dialog(1, "Только его часть...", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 5 then draw_dialog(1, "Эвоно как. Ну ты не волнуйся.", woman_sound, 1, empty, "Девушка");
			if dialog == 6 then draw_dialog(1, "Здесь ничего сложного нет, если ты готовился конечно..", woman_sound, 1, empty, "Девушка");
			if dialog == 7 then draw_dialog(1, "Я то?", boy_sound, 1, dialog_player_confusion, "Толя");
			if dialog == 8 then draw_dialog(1, "На все сто готов, я же не дурак.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 9 then draw_dialog(1, "Знаешь, что врать нехорошо?", woman_sound, 1, empty, "Девушка");
			if dialog == 10 then draw_dialog(1, "Быстро ты меня раскусила..", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 11 then draw_dialog(1, "Кстати, никогда не обращал внимания на эти фикусы?", woman_sound, 1, empty, "Девушка");
			if dialog == 12 then draw_dialog(1, "Тебе не кажутся они странными?", woman_sound, 1, empty, "Девушка");
			if dialog == 13 then draw_dialog(1, "Возможно, самую малость.", boy_sound, 1, dialog_player_reflection, "Толя");
			if dialog == 14 then draw_dialog(1, "От них как-будто появляются какие-то чудные мысли....", woman_sound, 1, empty, "Девушка");
			if dialog == 15 then draw_dialog(1, "...", boy_sound, 1, dialog_player_confusion, "Толя");
			if dialog == 16 {
				global.audit_check += 1;
				global.player_stop = false;
				alarm[0] = room_speed;
				dialog = 999
				loop_past = 1
			}
		}
	}
	else {
		if dialog == 1 then draw_dialog(1, "Не подходи к фикусам!", woman_sound, 1, empty, "Девушка");
		if dialog == 2 {
			global.player_stop = false;
			alarm[0] = room_speed;
			dialog = 999
		}
	}
}