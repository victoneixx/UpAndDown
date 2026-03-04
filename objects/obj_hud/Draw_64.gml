draw_set_font(fnt_hud);
var _width = 300;
var _scl_x = 0.5;
var _scl_y = 0.5;
draw_text_ext_transformed(2, 2, "Score: " + string(global.score), 0, _width, _scl_x, _scl_y, 0);

draw_set_halign(2);
draw_text_ext_transformed(cam_w-4, 2, "Level:" + string(global.level), 0, _width, _scl_x, _scl_y, 0);
draw_set_halign(0);


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
draw_text_ext_transformed(cam_w/2, 2, global.timer, 0, _width, _scl_x, _scl_y, 0);
draw_set_halign(0);

draw_set_font(0);
