if dialog == 1 then draw_dialog(1, "Раз я зашёл в эту проклятую аудиторию, то без зачёта я не уйду.", boy_sound, 1, dialog_player_reflection, "Толя")
if dialog == 2 {
	global.player_stop = false;
	alarm[0] = room_speed;
	dialog = 999
}