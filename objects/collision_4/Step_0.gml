if distance_to_object(obj_player)<5 and (keyboard_check(ord("E")) or keyboard_check(ord("Z")) ){
	if global.count_to_exit == 7 and dialog == 0 then dialog = 4;
	if global.audit_check == 2 and global.math_exam != -1 {
		if sound_door == 0 {
			audio_play_sound(open_door, 1, false);
			sound_door = 1
		}
		alarm[1] = 15
	}
	else if dialog == 0 then dialog = 1;
}
