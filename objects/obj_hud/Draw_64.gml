draw_set_font(fnt_hud);
var _width = 300;
var _scl_x = 0.5;
var _scl_y = 0.5;
var _txt_color = c_white;
var _sha_size = 1;
var _sha_color = c_black;

if(global.gameover == false){
	var _txt = string_format(global.score, 9, 0);
	var _score = string_replace_all(_txt, " ", "0");
	draw_text_shadow_ext_transformed(4, 1, _score, 0, _sha_size, _sha_color, _txt_color, 0, _width, _scl_x, _scl_y, 0);

	global.timer = "";
	if(global.t_hou > 9){global.timer += ""+string(global.t_hou)}
	if(global.t_hou < 10){global.timer += "0"+string(global.t_hou)}
	global.timer += ":";
	if(global.t_min > 9){global.timer += ""+string(global.t_min)}
	if(global.t_min < 10){global.timer += "0"+string(global.t_min)}
	global.timer += ":";
	if(global.t_sec > 9){global.timer += ""+string(global.t_sec)}
	if(global.t_sec < 10){global.timer += "0"+string(global.t_sec)}

	draw_set_halign(1);
	draw_text_shadow_ext_transformed(cam_w/2, 1, global.timer, 0, _sha_size, _sha_color, _txt_color, 0, _width, _scl_x, _scl_y, 0);
	draw_set_halign(0);

	var _level_num = "";
	if(global.level > 9){_level_num += " MAX"}
	if(global.level < 10){_level_num += "0"+string(global.level)}

	draw_set_halign(2);
	draw_text_shadow_ext_transformed(cam_w-4, 1, "Level" + _level_num, 0, _sha_size, _sha_color, _txt_color, 0, _width, _scl_x, _scl_y, 0);
	draw_set_halign(0);
}

draw_set_font(0);
