if(global.gameover == true) exit;
var _keyboard = keyboard_check_pressed(vk_space);
velv += gravi;
velv = clamp(velv, -12, 12);
if(velv != 0){image_yscale = sign(velv)}

if(place_meeting(x, y + velv, obj_collision)){
	while(!place_meeting(x, y + sign(velv), obj_collision)){
		y += sign(velv);
	}
	velv = 0;
	place = true;
}
y += velv;

if(place == true && _keyboard){
	var _pitch = random_range( 1, 2);
	audio_play_sound(snd_upanddown, 0, 0, , ,_pitch);
	gravi *= -1;
	place = false;
}
