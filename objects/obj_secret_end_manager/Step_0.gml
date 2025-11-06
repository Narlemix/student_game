if global.count_to_exit == 7 and !act_started {
	dialog = 1
	act_started = 1
	if !audio_is_playing(evil_music) then audio_play_sound(evil_music, 1, 1)
	else audio_stop_sound(evil_music)
}