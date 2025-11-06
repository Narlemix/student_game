if dialog == 1 then draw_dialog(1, "Держи дистанцию, Гоев. Подойди с стороны стола.", woman_sound, 1, math_face, "Надежда Сергеевна");
if dialog == 2 {
	global.player_stop = false;
	alarm[0] = room_speed;
	dialog = 999
}
