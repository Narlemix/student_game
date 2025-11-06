if global.act_ficus_1 == 0 {
	if loop_past == 0 {
		if dialog == 1 then draw_dialog(1, "Это фикус.", boy_sound, 1, empty);
		if dialog == 2 {
			global.player_stop = false;
			alarm[0] = room_speed;
			dialog = 999;
			loop_past = 1;
			global.act_ficus_2 += 1;
		}
	}

	else {
		if dialog == 1 then draw_dialog(1, "Всё-таки это фикус.", boy_sound, 1, empty);
		if dialog == 2 {
			global.player_stop = false;
			alarm[0] = room_speed;
			dialog = 999;
			}
	}
}
else if global.act_ficus_2 == 0 {
	if dialog == 1 then draw_dialog(1, "На удивление, это тоже фикус.", boy_sound, 1, empty);
	if dialog == 2 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999;
		global.act_ficus_2 += 1;
		global.count_to_exit += 1;
		}
}

else if global.act_ficus_2 == 1 and global.act_ficus_1 == 1 {
	if dialog == 1 then draw_dialog(1, "Арбуз. Арбуз.", boy_sound, 1, empty);
	if dialog == 2 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999
		global.count_to_exit += 1;
		if global.act_ficus_2 < 3 then
		global.act_ficus_2 += 1;
		}
}

else if global.act_ficus_2 == 1 and global.act_ficus_1 == 2 {
	if dialog == 1 then draw_dialog(1, "Мёд. Медятина.", boy_sound, 1, empty);
	if dialog == 2 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999
		if global.act_ficus_2 < 3 then
		global.act_ficus_2 += 1;
		}
}

else if global.act_ficus_2 == 1 and global.act_ficus_1 == 3 {
	if dialog == 1 then draw_dialog(1, "Фикус. Пикус?", boy_sound, 1, empty);
	if dialog == 2 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999
		if global.act_ficus_2 < 3 then
		global.act_ficus_2 += 1;
		}
}

else if global.act_ficus_2 == 2 and global.act_ficus_1 == 1 {
	if dialog == 1 then draw_dialog(1, "Ничего себе.", boy_sound, 1, empty);
	if dialog == 2 then draw_dialog(1, "Это фикус.", man_sound, 1, empty);
	if dialog == 3 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999;
		global.count_to_exit += 1;
		if global.act_ficus_2 < 3 then
		global.act_ficus_2 += 1;
		}
}

else if global.act_ficus_2 == 2 and global.act_ficus_1 == 2 {
	if dialog == 1 then draw_dialog(1, "Это фикус, никогда такого не было и вот опять.", boy_sound, 1, empty);
	if dialog == 2 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999;
		if global.act_ficus_2 < 3 then
		global.act_ficus_2 += 1;
		}
}

else if global.act_ficus_2 == 2 and global.act_ficus_1 == 2 {
	if dialog == 1 then draw_dialog(1, "Пора домой...", boy_sound, 1, empty);
	if dialog == 2 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999;
		if global.act_ficus_2 < 3 then
		global.act_ficus_2 += 1;
		}
}

else if global.act_ficus_2 == 2 and global.act_ficus_1 == 3 {
	if dialog == 1 then draw_dialog(1, "Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус. Фикус.", boy_sound, 1, empty);
	if dialog == 2 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999;
	
		if global.act_ficus_2 < 3 then
		global.act_ficus_2 += 1;
		}
}

else if global.act_ficus_2 == 3 and global.act_ficus_1 == 1 {
	if dialog == 1 then draw_dialog(1, "Сопротивление бесполезно.", boy_sound, 1, empty);
	if dialog == 2 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999;
		}
}

else if global.act_ficus_2 == 3 and global.act_ficus_1 == 2 {
	if dialog == 1 then draw_dialog(1, "Что это? Давно или...", boy_sound, 1, empty);
	if dialog == 2 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999;
		}
}

else if global.act_ficus_1 == 3 and global.act_ficus_2 == 3 {
	if global.loop_past_rise == 0 {
		if dialog == 1 then draw_dialog(1, "*Фикус навёл Толяна на некоторые глубокие рассуждения...*", boy_sound, 1, empty);
		if dialog == 2 then draw_dialog(1, "Этот фикус наводит на мысль, что я в своем познании настолько преисполнился, что я как будто бы уже сто триллионов миллиардов лет проживаю на триллионах и триллионах таких же планет, как эта Земля, мне этот мир абсолютно понятен, и я здесь ищу только одного - покоя,", boy_sound, 1, dialog_player_reflection, "Толян");
		if dialog == 3 then draw_dialog(1, "умиротворения и вот этой гармонии, от слияния с бесконечно вечным, от созерцания великого фрактального подобия и от вот этого замечательного всеединства существа, бесконечно вечного, куда ни посмотри, хоть вглубь - бесконечно малое, хоть ввысь - бесконечное большое, понимаешь?", boy_sound, 1, dialog_player_reflection, "Толян");
		if dialog == 4 then draw_dialog(1, "А ты мне опять со своим вот этим, иди суетись дальше, это твоё распределение, это твой путь и твой горизонт познания и ощущения твоей природы, он несоизмеримо мелок по сравнению с моим, понимаешь? Я как будто бы уже давно глубокий старец...", boy_sound, 1, dialog_player_reflection, "Толян");
		if dialog == 5 then draw_dialog(1, "*Мысленный монолог Анатолия продлился ещё около 3 минут*", boy_sound, 1, empty)
		if dialog == 6 then draw_dialog(1, "Поэтому давай, ступай, езжай, а я пошел наслаждаться прекрасным осенним закатом на берегу теплой южной реки. Всё, ступай, и я пойду.", boy_sound, 1, dialog_player_reflection, "Толян")
		if dialog == 7 {
		global.player_stop = false;
		alarm[0] = room_speed;
		dialog = 999
		global.loop_past_rise = 1;
		}
	}
	else {
		if dialog == 1 then draw_dialog(1, "Тонко, действительно тонко.", boy_sound, 1, dialog_player_stack, "Толян");
		if dialog == 2 {
			global.player_stop = false;
			alarm[0] = room_speed;
			dialog = 999
		}
	}
}