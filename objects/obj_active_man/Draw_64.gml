if global.count_to_exit == 7 {
	if dialog == 1 then draw_dialog(1, "Здарова!", boy_sound, 1, empty, "Парень с актива");
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
			if dialog == 1 then draw_dialog(1, "Здаров!", boy_sound, 1, empty, "Парень с актива");
			if dialog == 2 then draw_dialog(1, "Какие ощущения от экзамена?", boy_sound, 1, empty, "Парень с актива");
			if dialog == 3 then draw_dialog(1, "Привет.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 4 then draw_dialog(1, "Неприятные, мягко говоря.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 5 then draw_dialog(1, "Завалила что-ли?", boy_sound, 1, empty, "Парень с актива");
			if dialog == 6 then draw_dialog(1, "Ага...", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 7 then draw_dialog(1, "Соболезную, брат.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 8 then draw_dialog(1, "Ты не один, кто не справился с гневом демона.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 9 then draw_dialog(1, "Много наших полегло в битве с ним.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 10 then draw_dialog(1, "Говорят, она поблажки делает, тем кто на все пары ходил.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 11 then draw_dialog(1, "Но я так вижу, ты не из таких.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 12 then draw_dialog(1, "Что делать то думаешь?", boy_sound, 1, empty, "Парень с актива");
			if dialog == 13 then draw_dialog(1, "На кафедру схожу. Попробую договориться.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 14 then draw_dialog(1, "Пробуй, удачи тебе.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 15 then draw_dialog(1, "А я вот сижу жду, когда сбор актива начнётся.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 16 then draw_dialog(1, "Вы круглый год собираетесь?", boy_sound, 1, dialog_player_surprise, "Толя");
			if dialog == 17 then draw_dialog(1, "Каникулы же.", boy_sound, 1, dialog_player_surprise, "Толя");
			if dialog == 18 then draw_dialog(1, "Да у нас та-а-акие планы. Ты даже не представляешь.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 19 then draw_dialog(1, "Но мне нельзя говорить, приходи к нам и узнаешь.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 20 then draw_dialog(1, "Ну-у. Посмотрим.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 21 then draw_dialog(1, "Пока что другие дела.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 22 then draw_dialog(1, "Ну деловой.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 23 {
				global.audit_check += 1;
				global.player_stop = false;
				alarm[0] = room_speed;
				dialog = 999
				loop_past = 1
			}
		}
			
		else if global.math_exam == 1 {
			if dialog == 1 then draw_dialog(1, "Здаров!", boy_sound, 1, empty, "Парень с актива");
			if dialog == 2 then draw_dialog(1, "Какие ощущения от экзамена?", boy_sound, 1, empty, "Парень с актива");
			if dialog == 3 then draw_dialog(1, "Привет. Сдал я!", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 4 then draw_dialog(1, "Опа-на. Красавчик.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 5 then draw_dialog(1, "Тяжело было?", boy_sound, 1, empty, "Парень с актива");
			if dialog == 6 then draw_dialog(1, "Ну. Неприятно, конечно.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 7 then draw_dialog(1, "Но терпимо-терпимо.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 8 then draw_dialog(1, "Мне ещё повезло вытянуть билет с школьной программой.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 9 then draw_dialog(1, "Везунчик ты.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 10 then draw_dialog(1, "Я наслышан об этом билете.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 11 then draw_dialog(1, "Говорят, однажды она начала добавлять такие билеты в пачку, потому что кафедре не понравилось, что целые группы отправлялись с пересдачи на пересдачу.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 12 then draw_dialog(1, "Конечно, она могла бы просто топить студентов меньше.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 13 then draw_dialog(1, "Но она плохо спит, если не испортит жизнь хотя бы одному студентику.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 14 then draw_dialog(1, "Ага...", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 15 then draw_dialog(1, "А ты тут чем занимаешься?", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 16 then draw_dialog(1, "Да вот, сижу жду, когда сбор актива начнётся.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 17 then draw_dialog(1, "И ты к нам приходи, мы новичков очень любим.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 18 then draw_dialog(1, "Ну-у. Посмотрим.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 19 then draw_dialog(1, "Пока что другие дела.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 20 then draw_dialog(1, "Ну деловой.", boy_sound, 1, empty, "Парень с актива");	
			if dialog == 21 {
				global.audit_check += 1;
				global.player_stop = false;
				alarm[0] = room_speed;
				dialog = 999
				loop_past = 1
			}
		}
		
		
		else {
			if dialog == 1 then draw_dialog(1, "Здаров!", boy_sound, 1, empty, "Парень с актива");
			if dialog == 2 then draw_dialog(1, "Не видел тебя что-то в активе.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 3 then draw_dialog(1, "Привет.", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 4 then draw_dialog(1, "В активе меня нет, стесняюсь сцены..", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 5 then draw_dialog(1, "Вот как?", boy_sound, 1, empty, "Парень с актива");
			if dialog == 6 then draw_dialog(1, "Знай, ты многое теряешь.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 7 then draw_dialog(1, "Лучше попробовать и облажаться, чем вообще не пробовать.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 8 then draw_dialog(1, "...", boy_sound, 1, dialog_player_reflection, "Толя");
			if dialog == 9 then draw_dialog(1, "...", boy_sound, 1, empty, "Парень с актива");
			if dialog == 10 then draw_dialog(1, "Ну-у-у...", boy_sound, 1, empty, "Парень с актива");
			if dialog == 11 then draw_dialog(1, "Я так понимаю ты на пересдачу...", boy_sound, 1, empty, "Парень с актива");
			if dialog == 12 then draw_dialog(1, "Что пересдаешь?", boy_sound, 1, empty, "Парень с актива");
			if dialog == 13 then draw_dialog(1, "Историю буду и ...", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 14 then draw_dialog(1, "Ого, у тебя Виктор Васильевич?!", boy_sound, 1, empty, "Парень с актива");
			if dialog == 15 then draw_dialog(1, "Ну да, а что?", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 16 then draw_dialog(1, "Поздравляю тебя.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 17 then draw_dialog(1, "Он сегодня добрый, легко может отпустить.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 18 then draw_dialog(1, "Попробуй с ним договориться как то.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 19 then draw_dialog(1, "Спасибо, я это учту.", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 20 then draw_dialog(1, "Я тебя чуть перебил. Что ты говорил?", boy_sound, 1, empty, "Парень с актива");
			if dialog == 21 then draw_dialog(1, "Историю, инфу и матешу.", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 22 then draw_dialog(1, "Ох. Матеша. Лучше бы я это не слышал.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 23 then draw_dialog(1, "Плохо придётся тебе.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 24 then draw_dialog(1, "Да я это знаю.", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 25 then draw_dialog(1, "Я сам видел, как она проводила куда-то целую кучу студентов.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 26 then draw_dialog(1, "На казнь что-ли?", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 27 then draw_dialog(1, "Всё возможно. Но надеюсь, просто в другую аудиторию к другому преподавателю.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 28 then draw_dialog(1, "Но зачем?", boy_sound, 1, dialog_player_confusion, "Толя");
			if dialog == 29 then draw_dialog(1, "Начальство нередко её ругает из-за жестокого подхода, но ничего с ней сделать не могут.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 30 then draw_dialog(1, "А так, они спасут хотя бы часть первогодок.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 31 then draw_dialog(1, "Бессмыслица какая-то...", boy_sound, 1, dialog_player_reflection, "Толя");
			if dialog == 32 then draw_dialog(1, "Они же могут просто не допустить отчисление перваков, да и кого числанут с одним долгом?", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 33 then draw_dialog(1, "Здесь всё сложнее, чем ты думаешь.", boy_sound, 1, empty, "Парень с актива");
			if dialog == 34 then draw_dialog(1, "Оу.", boy_sound, 1, dialog_player_reflection, "Толя");
			if dialog == 35 {
				global.audit_check += 1;
				global.player_stop = false;
				alarm[0] = room_speed;
				dialog = 999
				loop_past = 1
			}
		}
	}

	else {
	 if dialog == 1 then draw_dialog(1, "Приходи в актив!", boy_sound, 1, empty, "Парень с актива");
	 if dialog == 2 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999
		}
	}
}