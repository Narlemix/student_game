var fade_started = obj_scene_manager.scene_active
if loop_past == 0 {
	if dialog == 1 then draw_dialog(1, "Здравствуйте.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 2 then draw_dialog(1, "Здравствуйте. А вот и Вы. Какими судьбами?", man_sound, 1, history_face, "Мирослав Митрофанович");
	if dialog == 3 then draw_dialog(1, "Пришёл за автоматом.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 4 then draw_dialog(1, "Каким автоматом?", man_sound, 1, history_face, "Мирослав Митрофанович");
	if dialog == 5 then draw_dialog(1, "По вашему предмету.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 6 then draw_dialog(1, "Будьте добры. Напомните название предмета.", man_sound, 1, history_face, "Мирослав Митрофанович");
	if dialog == 7 then draw_dialog(1, "Хм.. История?", boy_sound, 1, dialog_player_confusion, "Толя");
	if dialog == 8 then draw_dialog(1, "Первый вопрос сдан. Теперь второй: моё ФИО?", man_sound, 1, history_face, "Мирослав Митрофанович");
	if dialog == 9 then draw_dialog(1, "Ну... Дубославский Мирослав Митрофанович...", boy_sound, 1, dialog_player_reflection, "Толя");
	if dialog == 10 then draw_dialog(1, "Удивительно. Вы запомнили. Впечатляет.", man_sound, 1, history_face, "Мирослав Митрофанович");
	if dialog == 11 then draw_dialog(1, "Спасибо.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 12 then draw_dialog(1, "А теперь на оценку.", man_sound, 1, history_face, "Мирослав Митрофанович");
	if dialog == 13 then draw_dialog(1, "Тяните билет.", man_sound, 1, history_face, "Мирослав Митрофанович");
	if dialog == 14 then draw_dialog(1, "Может всё-таки договоримся?", boy_sound, 1, dialog_player_smile, "Толя");
	if dialog == 15 then draw_dialog(1, "Говорите.", man_sound, 1, history_face, "Мирослав Митрофанович");
	if dialog == 16 then draw_dialog(1, "Я хорошо разбираюсь в истории Римской империи, потому готов рассказать по этому материалу.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 17 then draw_dialog(1, "Не сомневаюсь. Но это школьная программа.", man_sound, 1, history_face, "Мирослав Митрофанович");
	if dialog == 18 then draw_dialog(1, "Я знаю больше школьной программы.", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 19 then draw_dialog(1, "Да что вы? Хорошо. Тогда встречное предложение: выберите один из двух вариантов.", man_sound, 1, history_face, "Мирослав Митрофанович");
	if dialog == 20 then draw_dialog(1, "Первый: Вы вытаскиваете из колоды билет, пишите и сдаёте. И я задам вам пару простых вопросов.", man_sound, 1, history_face, "Мирослав Митрофанович");
	if dialog == 21 then draw_dialog(1, "Второй: Вы рассказываете свой материал, но я буду, как вы говорите, 'валить' вас. Одна ошибка и незачёт.", man_sound, 1, history_face, "Мирослав Митрофанович");
	if dialog == 22 then draw_dialog(1, "Что же выбрать? Что в его понимании 'простые вопросы'?", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 23 then draw_dialog(1, "Надо было на пары ходить...", boy_sound, 1, dialog_player_stack, "Толя");
	if dialog == 24 {
		draw_dialog_options(1, "Что сделает Толя?", boy_sound, 1, empty, ["Возьмёт билет", "Расскажет о Римской империи"]);
		choice_1 = global.choice_index + 1
	}
	if choice_1 == 1 {
		choice_music = 0
		if dialog == 25 and !fade_started{
			scene_fade_in(blackground_big);
			fade_started = true;
			alarm[0] = room_speed;
			dialog = 999
			alarm[1] = room_speed * 1.5
		}
		if dialog == 26 then draw_dialog(1, "*Толя взял сверху лежащий билет и сел за парту*", boy_sound, 1, empty)
		if dialog == 27 then draw_dialog(1, "*Времени было мало, помимо этого Мирослав Митрофанович не спускал с Толи взгляд*", boy_sound, 1, empty)
		if dialog == 28 then draw_dialog(1, "*Напряжение росло. Чёрт бы подрал того активиста, который сказал, что историк сегодня добрый*", boy_sound, 1, empty)
		if dialog == 29 then draw_dialog(1, "*Через некоторое время Дубославский позвал Толю к себе. Он успел ответить только на один вопрос из 3*", boy_sound, 1, empty)
		if dialog == 30 {
			scene_fade_out();
			fade_started = false;
			draw_dialog(1, "И так.", man_sound, 1, history_face, "Мирослав Митрофанович");
		}
		if dialog == 31 then draw_dialog(1, "*Дубославский аккуратно взял у Толи листок и внимательным рассудительным взглядом осмотрел работу*", boy_sound, 1, empty)
		if dialog == 32 then draw_dialog(1, "С этим можно работать. Прошу. Рассказывайте. *протянул листок Толе*", man_sound, 1, history_face, "Мирослав Митрофанович");
		if dialog == 33 then draw_dialog(1, "Ну-у-у.. Крещение Руси - это комплекс взаимосвязанных событий конца X века, когда киевский князь Владимир Святославич ввёл христианство...", boy_sound, 1, dialog_player_reflection, "Толя");
		if dialog == 34 then draw_dialog(1, "*Толя монотонно продолжил свой конспект*", boy_sound, 1, dialog_player_reflection, "Толя");
		if dialog == 35 then draw_dialog(1, "*Через время Дубославский прервал Толю*", man_sound, 1, empty);
		if dialog == 36 then draw_dialog(1, "Хорошо. Я вас услышал. По вашему мнению, какое значение крещение Руси принесло для укрепления взаимоотношений с Византией?", man_sound, 1, history_face, "Мирослав Митрофанович");
		if dialog == 37 then draw_dialog(1, "Ну-у-у... Для Руси было необходимо принятие христианства, чтобы...", boy_sound, 1, dialog_player_reflection, "Толя");
		if dialog == 38 then draw_dialog(1, "Как-бы...", boy_sound, 1, dialog_player_reflection, "Толя");
		if dialog == 39 then draw_dialog(1, "Византия приняла народы Руси за своих.. Наверно.", boy_sound, 1, dialog_player_confusion, "Толя");
		if dialog == 40 then draw_dialog(1, "Интересная формулировка. Но как именно принятие христианства повлияло на отношения Руси с Византией?", man_sound, 1, history_face, "Мирослав Митрофанович");
		if dialog == 41 then draw_dialog(1, "Хм-м-м...", boy_sound, 1, dialog_player_reflection, "Толя");
		if dialog == 42 then draw_dialog(1, "Ну-у-у...", boy_sound, 1, dialog_player_confusion, "Толя");
		if dialog == 43 then draw_dialog(1, "Сильно.", boy_sound, 1, dialog_player_smile, "Толя");
		if dialog == 44 then draw_dialog(1, "Соглашусь. Но в чём это выражается?", man_sound, 1, history_face, "Мирослав Митрофанович");
		if dialog == 45 then draw_dialog(1, "...", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 46 then draw_dialog(1, "Что касается улучшения торговых связей? культурного обмена?", man_sound, 1, history_face, "Мирослав Митрофанович");
		if dialog == 47 then draw_dialog(1, "Чем или кем обменивались Русь и Византия. Чем торговали? Перечислите хотя бы.", man_sound, 1, history_face, "Мирослав Митрофанович");
		if dialog == 48 then draw_dialog(1, "Ткань, мёд, картошка, цветная капуста.", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 49 then draw_dialog(1, "*Дубославский тяжело вздохнул*", man_sound, 1, empty);
		if dialog == 50 then draw_dialog(1, "Как бы вам сказать...", man_sound, 1, history_face, "Дубославский");
		if dialog == 51 then draw_dialog(1, "...", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 52 then draw_dialog(1, "Думаю, вы знаете, где меня найти. Подходите в течение следующего семестра с готовыми конспектами.", man_sound, 1, history_face, "Дубославский");
		if dialog == 53 then draw_dialog(1, "И подучите крещение Руси. Буду вас ждать.", man_sound, 1, history_face, "Дубославский");
		if dialog == 54 {
					global.history_exam = 0;	
					global.player_stop = false;
					alarm[0] = room_speed;
					dialog = 999
					loop_past = 1
				}
	}
	if choice_1 == 2 {
		choice_music = choice_1
		if dialog == 25 then draw_dialog(1, "*Толя начинает свой длинный рассказ о величии Римской Империи, политической организации и администрации, о военной мощи и стратегии. Дубославский его не перебивал и внимательно слушал.*", boy_sound, 1, empty);
		if dialog == 26 then draw_dialog(1, "... Именно поэтому Римская Империя самое великое государство из всех когда-либо существовавших.", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 27 then draw_dialog(1, "Очень интересный рассказ. Спасибо.", man_sound, 1, history_face, "Дубославский");
		if dialog == 28 then draw_dialog(1, "Даже не знаю, что у вас спросить...", man_sound, 1, history_face, "Дубославский");
		if dialog == 29 then draw_dialog(1, "Что является источником ваших углубленных знаний о Риме?", man_sound, 1, history_face, "Дубославский");
		if dialog == 30 then draw_dialog(1, "Мне отец много о нём рассказывал.", boy_sound, 1, dialog_player_stack, "Толя");
		if dialog == 31 then draw_dialog(1, "Это высокий уровень. Так держать.", man_sound, 1, history_face, "Дубославский");
		if dialog == 32 then draw_dialog(1, "Может тогда без вопросов обойдёмся?", boy_sound, 1, dialog_player_smile, "Толя");
		if dialog == 33 then draw_dialog(1, "Если бы в ваших руках оказалась власть Ромула Августа, то как бы вы могли пресечь падение Римской империи?", man_sound, 1, history_face, "Дубославский");
		if dialog == 34 {
			draw_dialog_options(1, "Какая стратегия?", boy_sound, 1, empty, ["Дипломатия и альянсы", "Военная мощь"]);
			choice_2 = global.selected_choice + 1
		}
		if choice_2 == 1 {
			if dialog == 35 then draw_dialog(1, "Я бы вложился в дипломатию и альянсы с варварами. Ибо они включают возможность снижения военных конфликтов, что позволяет сосредоточиться на внутреннем развитии и экономическом росте.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 36 then draw_dialog(1, "Такие альянсы могут обеспечить стабильность на границах и создать торговые пути, что было бы выгодно обеим сторонам.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 37 then draw_dialog(1, "Хорошо. Однако варварские племена могут быть непредсказуемыми партнёрами, и альянс может быть ненадежным.", man_sound, 1, history_face, "Дубославский");
			if dialog == 38 then draw_dialog(1, "Вероятно, что совместные соглашения или уступки могут вызвать недовольство среди римских граждан или военной элиты, что вновь может привести к разгрому римлян.", man_sound, 1, history_face, "Дубославский");
			if dialog == 39 {
				draw_dialog_options(1, "Какие контраргументы?", boy_sound, 1, empty, ["Подавление варваров для удержания альянсов", "Прагматизм и балансировка сил"]);
				choice_3 = global.selected_choice + 1
			}
			if choice_3 == 2 {
				if dialog == 40 then draw_dialog(1, "Если альянсы сокращают военные расходы и потери, граждане в конечном итоге выигрывают от стабильности и снижения налогов.", boy_sound, 1, dialog_player_stack, "Толя");
				if dialog == 41 then draw_dialog(1, "Помимо этого Рим уже заключал союзы с 'варварами' (например, с галльскими племенами после завоевания), и это не всегда вызывало массовые протесты, если приносило пользу государству.", boy_sound, 1, dialog_player_stack, "Толя");
				if dialog == 42 then draw_dialog(1, "Так же Рим мог использовать противоречия между племенами, поддерживая одних против других (разделяй и властвуй), тем самым ослабляя всех потенциальных противников.", boy_sound, 1, dialog_player_stack, "Толя");
				if dialog == 43 then draw_dialog(1, "Хороший ответ. Неси зачётку.", man_sound, 1, history_face, "Дубославский");
				if dialog == 44 then draw_dialog(1, "Хорошо!", boy_sound, 1, dialog_player_smile, "Толя");
				if dialog == 45 {
					global.history_exam = 1;	
					global.player_stop = false;
					alarm[0] = room_speed;
					dialog = 999
					loop_past = 1
					choice_1 = 0
					
				}
			}
			else if choice_3 == 1 {
				if dialog == 40 then draw_dialog(1, "Вы правы, поэтому альянсы нужно держать в узде.", boy_sound, 1, dialog_player_stack, "Толя");
				if dialog == 41 then draw_dialog(1, "Не рубить направо и налево, а держать варваров под контролем, который можно укрепить только кровью, то есть присекая дурные настроения варваров.", boy_sound, 1, dialog_player_reflection, "Толя");
				if dialog == 42 then draw_dialog(1, "Если разгромить одно племя и устроить показательную резню, остальные тут же станут послушными союзниками. Ведь они прекрасно понимают: следующими будут они.", boy_sound, 1, dialog_player_stack, "Толя");
				if dialog == 43 then draw_dialog(1, "Так создаётся прочный альянс – не из дружбы, а из страха.", boy_sound, 1, dialog_player_stack, "Толя");
				if dialog == 44 then draw_dialog(1, "В этом ваша фатальная ошибка.", man_sound, 1, history_face, "Дубославский");
				if dialog == 45 then draw_dialog(1, "Подавление лишь откладывает восстание. Вспомните метяжи бататов и готов.", man_sound, 1, history_face, "Дубославский");
				if dialog == 46 then draw_dialog(1, "Войны разоряют казну, а 'запуганные союзники' предают при первом удобном случае.", man_sound, 1, history_face, "Дубославский");
				if dialog == 47 then draw_dialog(1, "Помните, как мы договаривались? Одна ошибка и незачёт.", man_sound, 1, history_face, "Дубославский");
				if dialog == 48 then draw_dialog(1, "Но... Я вам столько всего рассказал.", boy_sound, 1, dialog_player_surprise, "Толя");
				if dialog == 49 then draw_dialog(1, "Извините, но вы сами знали, на что шли. Мы в этом году не проходили Римскую империю.", man_sound, 1, history_face, "Дубославский");
				if dialog == 50 then draw_dialog(1, "Ох...", boy_sound, 1, dialog_player_shy, "Толя");
				if dialog == 51 {
					global.history_exam = 0;	
					global.player_stop = false;
					alarm[0] = room_speed;
					dialog = 999
					loop_past = 1
					choice_1 = 0
				}
			}
		}
		else if choice_2 == 2 {
			if dialog == 35 then draw_dialog(1, "Я бы сделал ставку на укрепление военной мощи.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 36 then draw_dialog(1, "Только сильная армия может гарантировать безопасность границ и подавить любые угрозы.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 37 then draw_dialog(1, "Если варвары увидят, что Рим непобедим, они не рискнут нападать, а значит, империя сохранит стабильность.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 38 then draw_dialog(1, "Интересно.", man_sound, 1, history_face, "Дубославский");
			if dialog == 39 then draw_dialog(1, "Однако постоянное увеличение военных расходов может истощить казну и привести к росту налогов, что вызовет недовольство среди граждан.", man_sound, 1, history_face, "Дубославский");
			if dialog == 40 then draw_dialog(1, "Кроме того, даже самая сильная армия не может быть везде одновременно - варвары могут атаковать слабые участки.", man_sound, 1, history_face, "Дубославский");
			if dialog == 41 {
				draw_dialog_options(1, "Какие контраргументы?", boy_sound, 1, empty, ["Экономическая эффективность милитаризации", "Карательные походы"]);
				choice_3 = global.selected_choice + 1
			}
			if choice_3 == 1 {
			if dialog == 42 then draw_dialog(1, "Военные расходы окупятся, если грамотно распределить ресурсы. Например, можно сократить затраты на роскошь и перенаправить средства на армию.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 43 then draw_dialog(1, "Кроме того, сильная армия позволит не только защищаться, но и контролировать торговые пути, что увеличит доходы.", boy_sound, 1, dialog_player_reflection, "Толя");
			if dialog == 44 then draw_dialog(1, "История показывает, что Рим выживал именно в те периоды, когда армия была сильна - как при Траяне или Августе.", boy_sound, 1, dialog_player_stack, "Толя");
			if dialog == 45 then draw_dialog(1, "Хорошо аргументировано. Зачёт.", man_sound, 1, history_face, "Дубославский");
			if dialog == 46 then draw_dialog(1, "Спасибо!", boy_sound, 1, dialog_player_smile, "Толя");
			if dialog == 47 {
					global.history_exam = 1;	
					global.player_stop = false;
					alarm[0] = room_speed;
					dialog = 999
					loop_past = 1
					choice_1 = 0
				}
			}
			else if choice_3 == 2 {
				if dialog == 42 then draw_dialog(1, "Нужно не просто укреплять границы, а нанести упреждающий удар!", boy_sound, 1, dialog_player_surprise, "Толя");
				if dialog == 43 then draw_dialog(1, "Если разгромить все варварские племена разом, они десятилетиями не оправятся.", boy_sound, 1, dialog_player_stack, "Толя");
				if dialog == 44 then draw_dialog(1, "Пусть варвары боятся даже думать о нападении - тогда никаких налоговых бунтов не будет, ведь все будут знать:", boy_sound, 1, dialog_player_reflection, "Толя");
				if dialog == 45 then draw_dialog(1, "Рим беспощаден к врагам.", boy_sound, 1, dialog_player_surprise, "Толя");
				if dialog == 46 then draw_dialog(1, "Это опасная иллюзия.", man_sound, 1, history_face, "Дубославский");
				if dialog == 47 then draw_dialog(1, "Агрессия сплотит варваров против Рима, как было во время Маркоманнских войн.", man_sound, 1, history_face, "Дубославский");
				if dialog == 48 then draw_dialog(1, "К тому же, казна опустеет ещё быстрее, а солдаты, уставшие от бесконечных походов, начнут бунтовать.", man_sound, 1, history_face, "Дубославский");
				if dialog == 49 then draw_dialog(1, "Незачёт.", man_sound, 1, history_face, "Дубославский");
				if dialog == 50 then draw_dialog(1, "Но... я же предлагал сильную армию!", boy_sound, 1, dialog_player_surprise, "Толя");
				if dialog == 51 then draw_dialog(1, "Сила - не в жестокости, а в разумной стратегии.", man_sound, 1, history_face, "Дубославский");
				if dialog == 52 then draw_dialog(1, "Вы выбрали путь, который и погубил империю.", man_sound, 1, history_face, "Дубославский");
				if dialog == 53 {
					global.history_exam = 0;	
					global.player_stop = false;
					alarm[0] = room_speed;
					dialog = 999
					loop_past = 1
					choice_1 = 0
				}
			}
		}
	}
}

else {
	if dialog == 1 then draw_dialog(1, "Всего доброго.", man_sound, 1, history_face, "Дубославский");
	if dialog == 2 {
	global.player_stop = false;
	alarm[0] = room_speed;
	dialog = 999
	}
}
