var currentSpeed;   // текущая скорость
var direction_move; // направление движения
// спринт должен быть 8

// Вычисляем текущее направление
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    // Если двигаемся влево, сбрасываем другие направления
    direction_move = -1; // влево
} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    // Если двигаемся вправо, сбрасываем другие направления
    direction_move = 1; // вправо
} else if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
    // Если двигаемся вверх, сбрасываем другие направления
    direction_move = 2; // вверх
} else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
    // Если двигаемся вниз, сбрасываем другие направления
    direction_move = 3; // вниз
} else {
    // Если не нажаты никакие клавиши, сбрасываем направление
    direction_move = 0; // стоим на месте
}

if global.player_stop == true then direction_move = 0;

// Определение текущей скорости на основе состояния Shift
if (keyboard_check(vk_shift)) {
    currentSpeed = sprint_speed; // скорость бега
	image_speed = 0.2;
} else {
    currentSpeed = normal_speed; // обычная скорость
	image_speed = 0.1;
}

// Обработка движения в зависимости от направления
switch (direction_move) {
    case -1: // влево
        x -= currentSpeed; // перемещение влево
		sprite_index = left_run;
        break;
    case 1: // вправо
        x += currentSpeed; // перемещение вправо
		sprite_index = right_run;
        break;
    case 2: // вверх
        y -= currentSpeed; // перемещение вверх
		sprite_index = back_run;
        break;
    case 3: // вниз
        y += currentSpeed; // перемещение вниз
		sprite_index = front_run;
        break;
    default:
        // никакое движение
        break;
}