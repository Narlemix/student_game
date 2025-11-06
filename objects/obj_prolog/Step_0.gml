if !act_started {
	dialog = 1
	act_started = 1
	if !audio_is_playing(calm_music) then audio_play_sound(calm_music, 1, 1)
	else audio_stop_sound(calm_music)
}
