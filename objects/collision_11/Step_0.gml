if distance_to_object(obj_player)<5 and dialog == 0 and (keyboard_check(ord("Z")) or keyboard_check(ord("E"))) {
	dialog = 1;
	}
	
if global.info_exam != -1 then loop_past = 1