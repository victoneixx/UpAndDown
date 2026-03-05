if(global.gameover == true) exit;
var _ry = choose(0, 16, 32, 48);
var _column = choose("down", "up");
if(_column == "down"){
	var _down = instance_create_layer(336, 144 + _ry, layer, obj_column_down);
	_down.hspeed = -4;
} else if(_column == "up"){
	var _up = instance_create_layer(336, 112 - _ry, layer, obj_column_up);
	_up.hspeed = -4;
}
alarm[0] = time_d;