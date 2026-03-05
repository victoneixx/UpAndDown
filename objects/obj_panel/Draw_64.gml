draw_set_font(fnt_panel);
if(global.gameover == true){
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	draw_set_halign(1);
	draw_set_valign(1);
	draw_sprite_ext(spr_gameover, 0, cam_w2/2, 32, 3, 3, 0, c_white, 1);
	
	draw_text(cam_w2/2, cam_h2/2, "Timer... " + global.timer);
	
	var _txt = string_format(global.score, 9, 0);
	var _score = string_replace_all(_txt, " ", "0");
	draw_text(cam_w2/2, cam_h2/2+17, "score... " + _score);
	
	var _txt_best = string_format(global.best_score, 9, 0);
	var _best_score = string_replace_all(_txt_best, " ", "0");
	draw_text(cam_w2/2, cam_h2/2+33, "score best... " + _best_score);
	
	draw_text_ext_transformed(cam_w2/2, cam_h2/2+96, "Press space to return to the menu", 0, 1000, 0.8, 0.8, 0);
	
	draw_set_halign(0);
	draw_set_valign(0);
}
draw_set_font(0);