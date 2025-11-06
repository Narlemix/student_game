global.player_stop = false;
if !variable_global_exists("math_exam") then global.math_exam = -1;
if !variable_global_exists("info_exam") then global.info_exam = -1;
if !variable_global_exists("history_exam") then global.info_exam = -1;
image_speed=0.1
if global.math_exam != -1 and room == main_hall {
	x = 288
	y = 96
}
if global.info_exam != -1 and room == history_audit {
	x = 832
	y = 576
}
