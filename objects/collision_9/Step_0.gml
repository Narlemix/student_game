if distance_to_object(obj_player)<5 and dialog = 0 and (keyboard_check(ord("Z")) or keyboard_check(ord("E"))) {
	dialog = 1;
	}
	
if dialog == 16 and !audio_is_playing(classic_music) then audio_play_sound(classic_music, 1, 1)
if dialog == 0 then audio_stop_sound(classic_music)