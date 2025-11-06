if dialog == 1 then draw_dialog(1, "Левый фикус - 1", man_sound, 1, empty, "Девушка с ноутбуком");
if dialog == 2 then draw_dialog(1, "Правый фикус - 2", man_sound, 1, empty, "Девушка с ноутбуком");
if dialog == 3 then draw_dialog(1, "00110001 00110010 00110010 00110010 00110001 00110001 00110001", man_sound, 1, empty, "Девушка с ноутбуком")
if dialog == 4 then draw_dialog(1, "...", boy_sound, 1, dialog_player_confusion, "Толя");
if dialog == 5 {
	global.player_stop = false;
	alarm[0] = room_speed;
	dialog = 999
}
