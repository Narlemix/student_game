if (scene_active && overlay_sprite != empty && fade_alpha > 0) {
    draw_set_alpha(fade_alpha);
	draw_sprite(overlay_sprite, 0, 0, 0);
    draw_set_alpha(1);
	
}

