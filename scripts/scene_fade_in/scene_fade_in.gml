function scene_fade_in(_sprite, _delay = 30, _callback = -1){
	  with (obj_scene_manager) {
        overlay_sprite = _sprite;
        fade_alpha = 0;
        scene_active = true;
        fading_in = true;
        fading_out = false;
    }
}