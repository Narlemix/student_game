var fade_started = obj_scene_manager.scene_active
if dialog == 1 {
scene_fade_in(blackground_big);
fade_started = true;
alarm[0] = room_speed;
dialog = 999
alarm[1] = room_speed * 1.5
}
if dialog == 2 then draw_dialog(1, "*Наш герой окончил 11 классов в своей глубинке и твёрдо решил получить высшее образование, надеясь на светлое будущее*", boy_sound, 1, empty);
if global.skip_prolog == 1 {
if dialog == 3 {
	audio_stop_sound(calm_music)
	draw_dialog(1, "*Впрочем.*", boy_sound, 1, empty);
	}
if dialog == 4 then draw_dialog(1, "*Мы и так знаем начало этой истории, не так ли?*", boy_sound, 1, narrator_stack, "???");
if dialog == 5 then room_goto(main_hall)
}
else {
if dialog == 3 then draw_dialog(1, "*К удивлению, Толя хорошо сдал экзамены и поступил в достойный университет*", boy_sound, 1, empty);
if dialog == 4 then draw_dialog(1, "*Теперь он первокурсник в большом городе-миллионнике*", boy_sound, 1, empty);
if dialog == 5 then draw_dialog(1, "*В новом месте для Толи всё было непривычным*", boy_sound, 1, empty);
if dialog == 6 then draw_dialog(1, "Его родной городок даже близко не мог сравниться с тем, что он видел здесь*", boy_sound, 1, empty);
if dialog == 7 then draw_dialog(1, "*Столько возможностей, столько людей, постоянная суета - ничего подобного он не встречал в своём маленьком посёлке*", boy_sound, 1, empty);
if dialog == 8 then draw_dialog(1, "*Город полностью захватил внимание Толи*", boy_sound, 1, empty);
if dialog == 9 then draw_dialog(1, "*Он завёл новых друзей, гулял по незнакомым местам, осматривал достопримечательности, ходил в развлекательные заведения*", boy_sound, 1, empty);
if dialog == 10 then draw_dialog(1, "Одним словом, занимался чем угодно, только не учёбой*", boy_sound, 1, empty);
if dialog == 11 then draw_dialog(1, "*И вот настало время первой в его жизни сессии*", boy_sound, 1, empty);
if dialog == 12 then draw_dialog(1, "*Естественно, Толя был к ней не готов*", boy_sound, 1, empty);
if dialog == 13 then draw_dialog(1, "*Но история была бы не такой интересной, если бы он не собрал волю в кулак и не попытался сдать все предметы без пересдач*", boy_sound, 1, empty);
if dialog == 14 then draw_dialog(1, "*Однако реальность оказалась суровой: один за другим экзамены проваливались*", boy_sound, 1, empty);
if dialog == 15 then draw_dialog(1, "*И вот Толя пришёл на пересдачу*", boy_sound, 1, empty)
if dialog == 16 then draw_dialog(1, "*Вторую или третью - Толя не помнил*", boy_sound, 1, empty);;
if dialog == 17 {
	audio_stop_sound(calm_music)
	room_goto(main_hall)
}
}