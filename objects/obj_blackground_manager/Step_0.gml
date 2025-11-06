if global.info_exam == -1 and !act_started {
	dialog = 1
	act_started = 1
	if !audio_is_playing(bit_music) then audio_play_sound(bit_music, 1, 1)
	else audio_stop_sound(bit_music)
}