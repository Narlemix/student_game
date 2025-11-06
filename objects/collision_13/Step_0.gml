if (fading_in) {
    alpha += fade_speed;
    if (alpha >= 1) {
        alpha = 1;
        fading_in = false; // завершён переход
    }
}

if distance_to_object(obj_player)<5 and (keyboard_check(ord("Z")) or keyboard_check(ord("E"))) {
	 alpha = 0;
    fading_in = true;
    _visible = true; 
}

