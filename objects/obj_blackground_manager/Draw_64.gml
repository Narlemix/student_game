var fade_started = obj_scene_manager.scene_active
if dialog == 1 then draw_dialog(1, "*Преподаватель активно стал что-то набирать на клавиатуре, щёлкать мышкой, явно залезая в самые недра файловой системы компьютера.*", boy_sound, 1, empty)
if dialog == 2 then draw_dialog(1, "*Затем он пригласил Толю за стол, а сам встал рядом*", boy_sound, 1, empty)
if dialog == 3 then draw_dialog(1, "*По всей видимости это были только скриншоты заданий, ибо изменить код не было возможности*", boy_sound, 1, empty)
if dialog == 4 then draw_dialog(1, "*Перед Толей было открыто первое задание*", boy_sound, 1, empty)
if dialog == 5 then draw_dialog(1, "*Шкадинов задавал вопросы к представленным кодам вслух*", boy_sound, 1, empty)
if dialog == 6 and !fade_started{
			scene_fade_in(info_1);
			fade_started = true;
			alarm[0] = room_speed;
			dialog = 999
			alarm[1] = room_speed * 1.5
}
if dialog == 7 then draw_dialog(1, "Первое задание: определить ошибку в заданном коде.", man_sound, 1, infoman_face, "Алексей Сергеевич");
if dialog == 8 then draw_dialog(1, "Твоя задача определить, что не так с этим декоратором.", man_sound, 1, infoman_face, "Алексей Сергеевич");
if dialog == 9 {
	draw_dialog_options(1, "Ошибка в коде?", boy_sound, 1, empty, ["Нет time_sleep", "Потеря стектрейса", "Аргументы у декоратора", "Нет решения"]);
	choice_2 = global.choice_index + 1
}
if choice_2 == 1 {
	if dialog == 10 then draw_dialog(1, "Вроде правильно.", man_sound, 1, infoman_face, "Алексей Сергеевич");
}
else if choice_2 != 1 {
	if dialog == 10 then draw_dialog(1, "Там вроде-как по-другому считается. Позже перепроверю.", man_sound, 1, infoman_face, "Алексей Сергеевич");
}
if dialog == 11 and fade_started{
	scene_fade_out();
	fade_started = false;
	dialog += 1
}
if dialog == 12 then draw_dialog(1, "*Шкадинов наклонился к клавиатуре и накликал на второй слайд*", boy_sound, 1, empty);
if dialog == 13 and !fade_started {
	scene_fade_in(info_2);
	fade_started = true;
	alarm[0] = room_speed;
	dialog = 999
	alarm[2] = room_speed * 1.5
}
if dialog == 14 then draw_dialog(1, "Теперь вторая задачка: Что будет в выводе этого кода?",  man_sound, 1, infoman_face, "Алексей Сергеевич");
if dialog == 15 {
	draw_dialog_options(1, "Вывод кода?", boy_sound, 1, empty, ["A", "B", "Ошибка компиляции", "Ничего"]);
	choice_3 = global.choice_index + 1
}
if choice_3 == 2 {
	if dialog == 16 then draw_dialog(1, "Ну да.", man_sound, 1, infoman_face, "Алексей Сергеевич");	
}
if choice_3 != 2 {
	if dialog == 16 then draw_dialog(1, "Вряд-ли, конечно.", man_sound, 1, infoman_face, "Алексей Сергеевич");	
}
if dialog == 17 and fade_started{
	scene_fade_out();
	fade_started = false;
	dialog += 1
}
if dialog == 18 then draw_dialog(1, "Теперь последняя задачка, это код на чистом JS. И к нему два вопроса:", man_sound, 1, infoman_face, "Алексей Сергеевич");
if dialog == 19 and !fade_started{
	scene_fade_in(info_3);
	fade_started = true;
	alarm[0] = room_speed;
	dialog = 999
	alarm[3] = room_speed * 1.5
}
if dialog == 20 then draw_dialog(1, "Что выведет код?", man_sound, 1, infoman_face, "Алексей Сергеевич");
if dialog == 21 {
	draw_dialog_options(1, "Что выведет код?", boy_sound, 1, empty, ["0 1 2 3 4", "5 5 5 5 5", "undefined undefined undefined undefined undefined", "Ничего"]);
	choice_4 = global.choice_index + 1
}
if dialog == 22 then draw_dialog(1, "Как исправить, чтобы выводил 0 1 2 3 4?", man_sound, 1, infoman_face, "Алексей Сергеевич");
if dialog == 23 {
	draw_dialog_options(1, "Как исправить?", boy_sound, 1, empty, ["Замена var на let", "setTimeout с 3 аргументом", "setTimeout в IIFE", "Никак"]);
	choice_5 = global.choice_index + 1
}
if choice_4 == 2 and choice_5 == 1 {
	if dialog == 24 then draw_dialog(1, "Ага, помню. Здесь именно так.", man_sound, 1, infoman_face, "Алексей Сергеевич");
}
else if choice_4 != 2 or choice_5 != 1 {
	if dialog == 24 then draw_dialog(1, "Не. Тут по-другому.", man_sound, 1, infoman_face, "Алексей Сергеевич");
}
if dialog == 25 then draw_dialog(1, "Ну я понял...", man_sound, 1, infoman_face, "Алексей Сергеевич");

if dialog == 26 and fade_started{
	dialog += 1
	show_debug_message(dialog)
	if (choice_2 == 1 and choice_3 == 2 and choice_4 == 2 and choice_5 == 1) then global.info_exam = 2
	else if (choice_2 == 4 and choice_3 == 4 and choice_4 == 4 and choice_5 == 4) then global.info_exam = 0
	else global.info_exam = 1
	scene_fade_out();
	fade_started = false;
	audio_stop_sound(bit_music)



}
if global.info_exam == 2 {
	if dialog == 27 then draw_dialog(1, "Ты себя отлично показал.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 28 then draw_dialog(1, "Увидимся в следующем году.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 29 then draw_dialog(1, "Может быть разработаем что-то вместе.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 30 then draw_dialog(1, "Зачёт у тебя. Неси зачётку.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 31 then draw_dialog(1, "Хорошо!", boy_sound, 1, dialog_player_smile, "Толя");
	if dialog == 32 then room_goto(history_audit)
}
if global.info_exam == 1 {
	if dialog == 27 then draw_dialog(1, "Неплохой результат.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 28 then draw_dialog(1, "Я перепроверю.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 29 then draw_dialog(1, "Но за то, что ты вызвался мне помочь, зачёт я тебе всё-равно поставлю.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 30 then draw_dialog(1, "Спасибо большое!", boy_sound, 1, dialog_player_smile, "Толя")
	if dialog == 31 then draw_dialog(1, "Пока.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 32 then room_goto(history_audit)
}
if global.info_exam == 0 {
	if dialog == 27 then draw_dialog(1, "Я ожидал от тебя большего, Толька.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 28 then draw_dialog(1, "Ты согласился помочь, но ничего не сделал.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 29 then draw_dialog(1, "Ступай. Незачёт.", man_sound, 1, infoman_face, "Алексей Сергеевич");
	if dialog == 30 then room_goto(history_audit)
}

