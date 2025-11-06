var fade_started = obj_scene_manager.scene_active
if dialog == 1 {
scene_fade_in(blackground_big);
fade_started = true;
alarm[0] = room_speed;
dialog = 999
alarm[1] = room_speed * 1.5
}
if dialog == 2 then draw_dialog(1, "*Толя, после долгого контакта с фикусами, начал видеть галюцинации*", boy_sound, 1, empty);
if dialog == 3 then draw_dialog(1, "*Он нес непонятный бред*", boy_sound, 1, empty);
if dialog == 4 then draw_dialog(1, "*Мимо проходящие студенты вызвали скорую, куда и забрали нашего Тольку*", boy_sound, 1, empty);
if dialog == 5 then draw_dialog(1, "*Врачи долго думали, в чем причина его поведения, и что стало катализатором для этого*", boy_sound, 1, empty);
if dialog == 6 then draw_dialog(1, "*Но тайну фикусов так никто и не раскрыл...*", boy_sound, 1, empty);
if dialog == 7 then draw_dialog(1, "*Так и заканчивается его студенческая история*", boy_sound, 1, empty);
if dialog == 8 then draw_dialog(1, "*Он пропустил все сроки пересдач из-за новой никому не известной болезни*", boy_sound, 1, empty);
if dialog == 9 then draw_dialog(1, "*Её назвали в честь первого заболевшего - болезнь Анатолия-фикуса*", boy_sound, 1, empty);
if dialog == 10 then draw_dialog(1, "*Поговаривают, тело Анатолия понемногу превращается в растение. Но я думаю, что это слухи.*", boy_sound, 1, empty);
if dialog == 11 then draw_dialog(1, "Однако.", boy_sound, 1, narrator_smile, "???");
if dialog == 12 then draw_dialog(1, "Наш мир удивителен.", boy_sound, 1, narrator_stack, "???");
if dialog == 13 then draw_dialog(1, "И так сложилось, что у меня много друзей Толей.", boy_sound, 1, narrator_smile, "???");
if dialog == 14 then draw_dialog(1, "Потому наша история на этом несчастном Толе-фикусе не заканчивается.", boy_sound, 1, narrator_stack, "???");
if dialog == 15 then draw_dialog(1, "Давайте я вам расскажу про ещё одного Толю?", boy_sound, 1, narrator_stack, "???");
if dialog == 16 then draw_dialog(1, "Ни одна из этих историй не будет каноничной.", boy_sound, 1, narrator_stack, "???");
if dialog == 17 then draw_dialog(1, "Потому что каноничны одновременно все.", boy_sound, 1, narrator_stack, "???");
if dialog == 18 then draw_dialog(1, "Прежде чем меня ругать, сами поживите и пообщайтесь с бесконечным числом Толянов.", boy_sound, 1, narrator_stack, "???");
if dialog == 19 then draw_dialog(1, "А кто знает, может я просто галюцинация Толи?", boy_sound, 1, narrator_confused, "???");
if dialog == 20 then draw_dialog(1, "Меня, кстати, Даней зовут.", boy_sound, 1, narrator_stack, "Даня");
if dialog == 21 then draw_dialog(1, "Ну а теперь.", boy_sound, 1, narrator_stack, "Даня");
if dialog == 22 then draw_dialog(1, "К делу.", boy_sound, 1, narrator_smile, "Даня");
if dialog == 23 {
global.info_exam = -1
global.math_exam = -1
global.history_exam = -1
global.skip_prolog = 1
game_restart()
}




