if dialog == 0 {
	if global.math_exam == -1 then dialog = 1
	else {
		if sound_door == 0 {
			audio_play_sound(open_door, 1, false);
			sound_door = 1
		}
		global.audit_check = 0
		alarm[1] = 15
	}
}