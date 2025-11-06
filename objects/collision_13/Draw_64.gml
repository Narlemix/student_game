if (_visible) {
    draw_set_alpha(alpha);
    draw_sprite(bg_sprite, 0, 0, 0);  // рисуем поверх фона
    draw_set_alpha(1);
}