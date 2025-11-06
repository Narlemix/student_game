if loop_past == 0 {
	if dialog == 1 then draw_dialog(1, "Здравствуйте...", boy_sound, 1, dialog_player_shy, "Толя");
	if dialog == 2 then draw_dialog(1, "Ну здравствуй.", woman_sound, 1, math_face, "Надежда Андреевна");
	if dialog == 3 then draw_dialog(1, "Удивлена, что ты явился сюда, Гоев.", woman_sound, 1, math_face, "Надежда Андреевна");
	if dialog == 4 then draw_dialog(1, "Я пока что хочу остаться в универе.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 5 then draw_dialog(1, "Это мы посмотрим.", woman_sound, 1, math_face, "Надежда Андреевна");
	if dialog == 6 then draw_dialog(1, "...", boy_sound, 1, dialog_player_smile, "Толя");
	if dialog == 7 then draw_dialog(1, "А теперь бери билет.", woman_sound, 1, math_face, "Надежда Андреевна");
	if dialog == 8 then draw_dialog(1, "*Толя взял билет и уже собирался уйти от стола.*", boy_sound, 1, empty);
	if dialog == 9 then draw_dialog(1, "Постой. Решать будешь при мне.", woman_sound, 1, math_face, "Надежда Андреевна");
	if dialog == 10 then draw_dialog(1, "Я знаю твои трюки.", woman_sound, 1, math_face, "Надежда Андреевна");
	if dialog == 11 then draw_dialog(1, "А иначе никак?..", boy_sound, 1, dialog_player_smile, "Толя");
	if dialog == 12 then draw_dialog(1, "Шанс на сдачу у тебя возможно будет.", woman_sound, 1, math_face, "Надежда Андреевна");
	if dialog == 13 then draw_dialog(1, "*Толя взглянул на билет...*", boy_sound, 1, empty);
	if dialog == 14 then draw_dialog(1, "*Надежда Андреевна перетасовала колоду билетов и вытащила из неё пару листов, разложив их перед Толей.*", boy_sound, 1, empty);
	if dialog == 15 { 
		draw_dialog_options(1, "Какой билет возьмет Толя?", boy_sound, 1, empty, ["1", "2"]);
		ticket = global.selected_choice + 1
		}
	if ticket == 1 {
		if dialog == 16 then draw_dialog(1, "И что это такое..", boy_sound, 1, dialog_player_reflection, "Толя");
		if dialog == 17 then draw_dialog(1, "*Учитель математики злобно ухмыльнулся и дал Толе листок для решений*", boy_sound, 1, empty);
		if dialog == 18 then draw_dialog(1, "*Анатолий начал изучать задания и решать.*", boy_sound, 1, empty);
		if dialog == 19 then draw_dialog(1, "*Билет номер 52 (удачный)*", boy_sound, 1, empty);
		if dialog == 20 {
			draw_dialog_options(1, "1. 451 * 2", boy_sound, 1, empty, ["1041", "902", "2005"]);
			}
		if dialog == 21 {
			draw_dialog_options(1, "2. 52 + 39", boy_sound, 1, empty, ["91", "100", "13"]);
		}
		if dialog == 22 {
			draw_dialog(1, "Это точно высшмат?", boy_sound, 1, dialog_player_reflection, "Толя");
		}
		if dialog == 23 {
			draw_dialog_options(1, "3. d^2u/dt^2 - d^2u/dx^2 + sin(u) = 0", boy_sound, 1, empty, ["Не знаю", "Без понятия", "В душе не чаю", "Фикус"]);
		}
		if dialog == 24 then draw_dialog(1, "И кто меня за язык тянул?..", boy_sound, 1, dialog_player_reflection, "Толя");
		if dialog == 25 then draw_dialog(1, "Время закончилось. Что там у тебя?", woman_sound, 1, math_face, "Надежда Андреевна");
		if dialog == 26 then draw_dialog(1, "Сейчас... Подождите..", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 27 then draw_dialog(1, "Да не тужься ты, Гоев.", woman_sound, 1, math_face, "Надежда Андреевна");
		if dialog == 28 then draw_dialog(1, "*Надежда Андреевна забирает листок*", boy_sound, 1, empty);
		if dialog == 29 then draw_dialog(1, "Ну и ну...", woman_sound, 1, math_face, "Надежда Андреевна");
		if dialog == 30 then draw_dialog(1, "Ты был так близок. Но так недалек.", woman_sound, 1, math_face, "Надежда Андреевна");
		if dialog == 31 then draw_dialog(1, "Это нечестно... Людмила Сергеевна.", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 32 then draw_dialog(1, "Ну ты и студентушка, мог бы хоть моё ФИО выучить перед экзаменом...", woman_sound, 1, math_face, "Надежда Андреевна");
		if dialog == 33 then draw_dialog(1, "...", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 34 then draw_dialog(1, "Шанс у тебя был, так что моя душа чиста.", woman_sound, 1, math_face, "Надежда Андреевна");
		if dialog == 35 then draw_dialog(1, "Иди уже.", woman_sound, 1, math_face, "Надежда Андреевна");

		if dialog == 36 {
			global.player_stop = false;
			alarm[0] = room_speed;
			dialog = 999
			global.math_exam = 0
		}
	}
	else if ticket == 2 {
		if dialog == 16 then draw_dialog(1, "*Учитель математики вручила Толе листок для решений*", boy_sound, 1, empty);
		if dialog == 17 then draw_dialog(1, "Ну.. Могло быть и хуже.", boy_sound, 1, dialog_player_reflection, "Толя");
		if dialog == 18 then draw_dialog(1, "*Анатолий начал изучать задания и решать*", boy_sound, 1, empty);
		if dialog == 19 then draw_dialog(1, "*Билет номер 41*", boy_sound, 1, empty);
		if dialog == 20 {
			draw_dialog_options(1, "1. Найдите все решения в уравнении: x^2 - 5x + 6 = 0", boy_sound, 1, empty, ["3, 2", "1, 3", "4, 2"]);
			player_ans_2_1 = global.selected_choice
		}
		if dialog == 21 {
			draw_dialog_options(1, "2. Найти все x: |2x - 3| = 7", boy_sound, 1, empty, ["7, 8", "1, -6", "5, -2"]);
			player_ans_2_2 = global.selected_choice
		}
		if dialog == 22 {
			draw_dialog_options(1, "3. Решить: ln(3x - 2) - ln(x + 1) = 1", boy_sound, 1, empty, ["Нет решений", "(e + 1)/2e", "(e - 2)/(3 - e)", "Отпустите меня домой"]);
			player_ans_2_3 = global.selected_choice
		}
		if dialog == 23 {
			if player_ans_2_1 == ans_2_1 and player_ans_2_2 == ans_2_2 and player_ans_2_3 == ans_2_3 then global.math_exam = 1
			else global.math_exam = 0
			draw_dialog(1, "Работа сделана, Людмила Сергеевна.", boy_sound, 1, dialog_player_stack, "Толя");
		}
		if dialog == 24 then draw_dialog(1, "Какая я тебе Людмила, Гоев?", woman_sound, 1, math_face, "Надежда Андреевна");
		if dialog == 25 then draw_dialog(1, "А я уже хотела тебе балл за упорство накинуть.", woman_sound, 1, math_face, "Надежда Андреевна");
		if dialog == 26 then draw_dialog(1, "Извините... Э..", boy_sound, 1, dialog_player_shy, "Толя");
		if dialog == 27 then draw_dialog(1, "Надежда... Да. Надежда Сергеевна.", boy_sound, 1, dialog_player_shy, "Толя");
		if dialog == 28 then draw_dialog(1, "*Надежда Андреевна забирает листок и стала его проверять*", boy_sound, 1, empty);
		if dialog == 29 then draw_dialog(1, "Хм...", woman_sound, 1, math_face, "Надежда Андреевна");
		if dialog == 30 then draw_dialog(1, "Ничего себе...", woman_sound, 1, math_face, "Надежда Андреевна");
		if dialog == 31 then draw_dialog(1, "Ну как там? Всё правильно?", boy_sound, 1, dialog_player_surprise, "Толя");
		if dialog == 32 then draw_dialog(1, "Тише будь.", woman_sound, 1, math_face, "Надежда Андреевна");
		if dialog == 33 then draw_dialog(1, "...", boy_sound, 1, dialog_player_stack, "Толя");
	
		if global.math_exam == 0 {
			if dialog == 34 then draw_dialog(1, "Ну как я и думала.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 35 then draw_dialog(1, "*Надежда Андреевна берёт красную ручку и перечёркивает решение билета жирной линией*", boy_sound, 1, empty);
			if dialog == 36 then draw_dialog(1, "Чушь. Чушь, Гоев.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 37 then draw_dialog(1, "Неужели всё неправильно?", boy_sound, 1, dialog_player_surprise, "Толя");
			if dialog == 38 then draw_dialog(1, "Это неважно. Ты допустил очень глупые ошибки.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 39 then draw_dialog(1, "Ты безнадёжен, Гоев.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 40 then draw_dialog(1, "С таким уровнем знаний ты не имеешь права оставаться в нашем учебном заведении.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 41 then draw_dialog(1, "Я могу всё исправить. Перерешать. Давайте договоримся.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 42 then draw_dialog(1, "Договариваться будешь с медкомиссией в военкомате, Гоев.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 43 then draw_dialog(1, "Вы не понимаете, мне нельзя в армию.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 44 then draw_dialog(1, "Моя семья надеется на меня. Они мне не простят этого.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 45 then draw_dialog(1, "Не выгоняйте. Не ради меня, а ради семьи. Прошу.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 46 then draw_dialog(1, "Я должен выучиться и устроиться инженером, как мой отец.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 47 then draw_dialog(1, "Так каждый делал в моей семье по отцовской линии.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 48 then draw_dialog(1, "Думаешь, почему я запомнила твою фамилию, когда ты приходил раз в месяц?", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 49 then draw_dialog(1, "...", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 50 then draw_dialog(1, "Твой отец был ещё безответственнее, чем ты, Толя.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 51 then draw_dialog(1, "Ему повезло выпросить другого экзаменатора после треска на моей пересдаче.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 52 then draw_dialog(1, "Странно, вы очень молодо выглядите.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 53 then draw_dialog(1, "Твоя лесть не пройдёт, Гоев.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 54 then draw_dialog(1, "Так что не смей прикрываться семьей.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 55 then draw_dialog(1, "Но это правда...", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 56 then draw_dialog(1, "Ой ты. Так что или иди на кафедру или иди примерять берцы.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 57 then draw_dialog(1, "Свободен.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 58 then draw_dialog(1, "Может и вправду на кафедру сходить?", boy_sound, 1, dialog_player_reflection, "Толя");
			if dialog == 59 {
				global.player_stop = false;
				alarm[0] = room_speed;
				dialog = 999
				loop_past = 1
			}
		}
		else {
			if dialog == 34 then draw_dialog(1, "...", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 35 then draw_dialog(1, "Я поражена, Гоев.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 36 then draw_dialog(1, "*Надежда Сергеевна откладывает листок с решением в сторону*", boy_sound, 1, empty);
			if dialog == 37 then draw_dialog(1, "Я тоже...", boy_sound, 1, dialog_player_surprise, "Толя");
			if dialog == 38 then draw_dialog(1, "Может ещё какой-нибудь билет хочешь решить?", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 39 then draw_dialog(1, "Я правильно понимаю, что отказаться не могу?", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 40 then draw_dialog(1, "Почему же?", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 41 then draw_dialog(1, "Это, конечно, школьная программа, но для тебя это прям эволюционный скачок.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 42 then draw_dialog(1, "У меня даже настроение поднялось.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 43 then draw_dialog(1, "Иди отсюда быстрее пока я добрая. Тройка у тебя.", woman_sound, 1, math_face, "Надежда Андреевна");
			if dialog == 44 then draw_dialog(1, "Так точно. Выполняю.", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 45 then draw_dialog(1, "Почему она меня считает таким глупым? Она ведь видела меня всего пару раз...", boy_sound, 1, dialog_player_reflection, "Толя");
			if dialog == 46 {
				global.player_stop = false;
				alarm[0] = room_speed;
				dialog = 999
				loop_past = 1
			}
		}
	}
}

else {
	if dialog == 1 then draw_dialog(1, "Уйди уже.", boy_sound, 1, math_face, "Надежда Андреевна");
	if dialog == 2 {
	global.player_stop = false;
	alarm[0] = room_speed;
	dialog = 999
	}
}
