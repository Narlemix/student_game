if dialog == 0 {
	if global.history_exam == -1 or global.info_exam == -1 then dialog = 1
	else {
		if sound_door == 0 {
			audio_play_sound(open_door, 1, false);
			sound_door = 1
		}
		alarm[1] = 15
	}
}