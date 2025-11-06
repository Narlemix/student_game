var fade_started = obj_scene_manager.scene_active
if dialog == 1 {
scene_fade_in(blackground_big);
fade_started = true;
alarm[0] = room_speed;
dialog = 999
alarm[1] = room_speed * 1.5
}
if global.info_exam > 0 {
if dialog == 2 then draw_dialog(1, "*Толя сдал информатику*", boy_sound, 1, empty);
}
else {
if dialog == 2 then draw_dialog(1, "*Толя, к сожалению, не сдал информатику*", boy_sound, 1, empty);
}
if global.history_exam > 0 {
if dialog == 3 then draw_dialog(1, "*Толя сдал историю*", boy_sound, 1, empty);
}
else {
if dialog == 3 then draw_dialog(1, "*Толя, увы, не сдал историю*", boy_sound, 1, empty);
}
if dialog == 4 then draw_dialog(1, "*Но самое главное - он сдал математику*", boy_sound, 1, empty);
if dialog == 5 then draw_dialog(1, "*И вот он довольный идёт домой*", boy_sound, 1, empty);
if dialog == 6 then draw_dialog(1, "*Измотанный, изнемождённый*", boy_sound, 1, empty);
if dialog == 7 then draw_dialog(1, "*И как будто побитый*", boy_sound, 1, empty);
if dialog == 8 then draw_dialog(1, "*Но с улыбкой на лице*", boy_sound, 1, empty);
if dialog == 9 then draw_dialog(1, "*Что же стало причиной улыбки?*", boy_sound, 1, empty);
if dialog == 10 then draw_dialog(1, "*Успешная сдача самого тяжелого экзамена с самым вредным преподавателем*", boy_sound, 1, empty);
if dialog == 11 then draw_dialog(1, "*В тот же момент он чувствовал легкость и вкус победы!*", boy_sound, 1, empty);
if dialog == 12 then draw_dialog(1, "*Но не надолго*", boy_sound, 1, empty);
if dialog == 13 then draw_dialog(1, "*Ведь впереди еще сложный и тернистый путь*", boy_sound, 1, empty);
if dialog == 14 then draw_dialog(1, "Но кто знает, что уготовила судьба для нашего Толеньки?", boy_sound, 1, narrator_smile, "???");
if dialog == 15 then draw_dialog(1, "А пока он счастливый идёт домой, давайте я вам расскажу ещё об одном моём друге.", boy_sound, 1, narrator_stack, "???");
if dialog == 16 then draw_dialog(1, "Его, кстати, тоже Толя зовут.", boy_sound, 1, narrator_smile, "???");
if dialog == 17 {
	global.info_exam = -1
	global.math_exam = -1
	global.history_exam = -1
	global.skip_prolog = 1
	game_restart()
	}

if dialog == 18 {
scene_fade_in(blackground_big);
fade_started = true;
alarm[0] = room_speed;
dialog = 999
alarm[2] = room_speed * 1.5
}
if global.info_exam > 0 {
if dialog == 19 then draw_dialog(1, "*Толя сдал информатику*", boy_sound, 1, empty);
}
else {
if dialog == 19 then draw_dialog(1, "*Толя, к сожалению, не сдал информатику*", boy_sound, 1, empty);
}
if global.history_exam > 0 {
if dialog == 20 then draw_dialog(1, "*Толя сдал историю*", boy_sound, 1, empty);
}
else {
if dialog == 20 then draw_dialog(1, "*Толя, увы, не сдал историю*", boy_sound, 1, empty);
}
if dialog == 21 then draw_dialog(1, "*Но что обиднее всего - он не сдал математику*", boy_sound, 1, empty);
if dialog == 22 then draw_dialog(1, "*Ведь придётся постараться, чтобы её пересдать*", boy_sound, 1, empty);
if dialog == 23 then draw_dialog(1, "*Но он не знал, как и куда ему обратиться за помощью.*", boy_sound, 1, empty);
if dialog == 24 then draw_dialog(1, "*Заручившись информацией у товарищей, Анатолий отправился на кафедру с целью сменить преподавателя*", boy_sound, 1, empty);
if dialog == 25 then draw_dialog(1, "*Это могло ему дать хотя бы малейшие шансы на сдачу*", boy_sound, 1, empty);
if dialog == 26 then draw_dialog(1, "*Женщины в кабинете согласились и поддержали его, а значит на следующей пересдаче будет другой экзаменатор*", boy_sound, 1, empty);
if dialog == 27 then draw_dialog(1, "*Однако предупредили, что эта пересдача будет его последним шансом*", boy_sound, 1, empty);
if dialog == 28 then draw_dialog(1, "*Наш герой вышел из кабинета счастливый и полный надежды*", boy_sound, 1, empty);
if dialog == 29 then draw_dialog(1, "Но кто знает, что уготовила судьба для нашего Толеньки?", boy_sound, 1, narrator_smile, "???");
if dialog == 30 then draw_dialog(1, "А пока наш герой 'активно' готовится к пересдаче, давайте я вам расскажу ещё об одном моём друге?", boy_sound, 1, narrator_stack, "???");
if dialog == 31 then draw_dialog(1, "Его, кстати, тоже Толя зовут.", boy_sound, 1, narrator_smile, "???");
if dialog == 32 {
	global.info_exam = -1
	global.math_exam = -1
	global.history_exam = -1
	global.skip_prolog = 1
	game_restart()
	}