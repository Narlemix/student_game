if dialog == 1 then draw_dialog(1, "*Раздался жуткий храп*", boy_sound, 1, empty);
if dialog == 2 then draw_dialog(1, "Z-z-z-z-z...", boy_sound, 1, empty, "Спящий парень");

if dialog == 3 {
		global.player_stop = false;
		dialog = 999
	}