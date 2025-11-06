if distance_to_object(obj_player)<15 and dialog == 0 and (keyboard_check(ord("Z")) or keyboard_check(ord("E"))) {
	dialog = 1;
	}

if choice_1 == 2 and !audio_is_playing(roman_empire) {
	audio_play_sound(roman_empire, 1, 1)
}
if choice_1 != 2 and audio_is_playing(roman_empire) {
	audio_stop_sound(roman_empire)
}

if global.history_exam != -1 then loop_past = 1