if global.math_exam == 1 and !act_started {
	dialog = 1
	act_started = 1
	if !audio_is_playing(end_sound) then audio_play_sound(end_sound, 1, 1)
	else audio_stop_sound(end_sound)
}

if global.math_exam == 0 and !act_started {
	dialog = 18
	act_started = 1
	if !audio_is_playing(end_sound) then audio_play_sound(end_sound, 1, 1)
	else audio_stop_sound(end_sound)
}