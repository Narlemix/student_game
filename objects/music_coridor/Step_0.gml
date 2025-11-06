if global.audit_check == 2 and flag_ring == 0 {
	audio_play_sound(ring, 1, false);
	flag_ring = 1;
	dialog = 1;
	alarm[1] = room_speed
}