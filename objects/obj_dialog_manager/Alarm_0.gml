global.letters += spd
if (global.letters == round(global.letters) and window_has_focus()) {
	audio_play_sound(sound, 0, 0)
}