function draw_dialog(alpha, text, voice, speed_text, sprite_self, name = "") {
    // Переменная для хранения текущего "отображаемого" текста
    static prev_text = "";

    // Проверка, чтобы global.letters не превышало длину текста
    if global.letters > string_length(text) {
        global.letters = min(global.letters, string_length(text));
    }

    // Выполняем посимвольную анимацию текущего текста
    text_anim = string_copy(text, 1, floor(global.letters));

    // Если текст анимируется (еще выводятся буквы)
    if global.letters < string_length(text) {
        write = 1;
        prev_text = text_anim; // Сохраняем обновленный текст
    }
    else { // Анимация текста завершена
        write = 0;
        prev_text = text; // Обеспечиваем, что отображается полный текст
    }

    // Проверка ввода для перехода к следующей строке
    if write == 0 && (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("E"))) {
        with (obj_dialog_manager) {
            global.letters = 0; // Сбрасываем счетчик символов для следующей строки
        }
        dialog += 1; // Переходим к следующей строке
    }

    // Блокируем действия игрока во время диалога
    global.player_stop = true;

    // Настройка шрифта
    draw_set_font(calibri);

    // Рисуем окно диалога
    draw_sprite_ext(dialog_window, -1, 370, 800, 4, 3, 0, -1, alpha);

    // Если указано изображение персонажа, рисуем его
    if sprite_self != empty then draw_sprite_ext(sprite_self, -1, -90, 600, 2, 2, 0, -1, alpha);

    // Отображаем имя персонажа (если указано) и текст
    if name != "" {
        draw_set_color(c_blue);
        draw_text(400, 813, name);
        draw_set_color(c_white);
        draw_text_ext(400, 850, prev_text, 40, 1100);
    }
    else {
        draw_text_ext(400, 820, prev_text, 40, 1100);
    }

    // Логика запуска анимации текста с задержкой
    if write == 1 {
        with (obj_dialog_manager) {
            alarm[0] = 1; // Запускаем задержку для текста
            sound = voice; // Устанавливаем звук озвучки символов
            spd = speed_text; // Устанавливаем скорость вывода текста
        }
    }
}