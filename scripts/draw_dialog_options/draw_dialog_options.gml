function draw_dialog_options(alpha, text, voice, speed_text, sprite_self, choices = undefined, name = "") {
    // Переменная для отображаемого текста
    static prev_text = "";

    // Проверяем, чтобы число символов не превышало длину текста
    if global.letters > string_length(text) {
        global.letters = string_length(text);
    }

    // Выполняем посимвольную анимацию текста
    var text_anim = string_copy(text, 1, global.letters);

    // Если текст ещё пишется
    if global.letters < string_length(text) {
        write = 1;
        prev_text = text_anim; // Сохраняем текущий прогресс текста
    } else { // Анимация завершена
        write = 0;
        prev_text = text; // Устанавливаем полный текст
    }

    // Останавливаем действия игрока во время диалога
    global.player_stop = true;

    // Настраиваем шрифт
    draw_set_font(calibri);

    // Рисуем окно диалога
    draw_sprite_ext(dialog_window, -1, 370, 800, 4, 3, 0, -1, alpha);

    // Если есть изображение персонажа, рисуем его
    if sprite_self == empty {
        draw_sprite(empty, 1, -50, -50);
    } else {
        draw_sprite_ext(sprite_self, -1, -90, 600, 2, 2, 0, -1, alpha);
    }

    // Рисуем имя персонажа (если указано) и основной текст
    if name != "" {
        draw_set_color(c_blue); // Цвет для имени
        draw_text(400, 813, name);
        draw_set_color(c_white); // Возвращаем цвет для текста
        draw_text_ext(400, 850, prev_text, 40, 1100);
    } else {
        draw_set_color(c_white); // Цвет текста по умолчанию
        draw_text_ext(400, 820, prev_text, 40, 1100);
    }

    // Если текст ещё выводится, запускаем анимацию текста
    if write == 1 {
        with (obj_dialog_manager) {
            alarm[0] = 1; // Таймер для анимации текста
            sound = voice; // Устанавливаем звук символов
            spd = speed_text; // Скорость вывода текста
        }
    }

    // Инициализация глобальных переменных для выбора
    if !variable_global_exists("choice_index") {
        global.choice_index = 0; // Текущий индекс выбора
    }

    if !variable_global_exists("selected_choice") {
        global.selected_choice = -1; // Выбранный вариант (-1 = ничего не выбрано)
    }

    // Обработка выбора варианта (только если текст завершен)
    if write == 0 && is_array(choices) && array_length(choices) > 0 {
    draw_set_font(calibri);
    draw_set_color(c_white); // Цвет текста для вариантов

    // Настройка позиций и размеров
    var max_width = 900; // Максимальная ширина текста
    var option_height = 40; // Высота между вариантами (вертикальный шаг)
    var option_width = 400; // Расстояние между столбцами (горизонтальный шаг)
    var start_y = 920; // Начальная позиция Y
    var margin_x = 400; // Начальная позиция X

    // Количество вариантов в одном столбце
    var options_per_column = 2;

    for (var i = 0; i < array_length(choices); i++) {
        // Рассчитываем X и Y позицию для каждого варианта
        var option_x = margin_x + (option_width * (i div options_per_column)); // Смещение X
        var option_y = start_y + (option_height * (i mod options_per_column)); // Смещение Y

        // Если элемент выбран (подсвечивается)
        if i == global.choice_index {
            draw_set_color(c_yellow); // Цвет выделенного варианта
            draw_text(option_x, option_y, choices[i]); // Подсвеченный текст
            draw_set_color(c_white); // Сбрасываем цвет на белый
        } else {
            draw_set_color(c_white);
            draw_text(option_x, option_y, choices[i]); // Обычный текст
        }
    }

    // Управление выбором с клавиатуры
    if keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) {
        global.choice_index -= 1;
        if global.choice_index < 0 {
            global.choice_index = array_length(choices) - 1;
        }
    }

    if keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) {
        global.choice_index += 1;
        if global.choice_index >= array_length(choices) {
            global.choice_index = 0;
        }
    }

    // Также добавим возможность передвигаться по столбцам с помощью клавиш "влево" и "вправо"
    if keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) {
        global.choice_index -= options_per_column;
        if global.choice_index < 0 {
            global.choice_index = array_length(choices) + global.choice_index;
        }
    }

    if keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) {
        global.choice_index += options_per_column;
        if global.choice_index >= array_length(choices) {
            global.choice_index = global.choice_index - array_length(choices);
        }
    }

    // Подтверждение выбора (нажатие "ENTER")
    if keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("E")) {
        global.selected_choice = global.choice_index; // Сохраняем выбранный вариант
        dialog += 1; // Переход к следующему диалогу
        global.letters = 0; // Сброс текста
    }
}
}