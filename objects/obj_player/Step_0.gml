var _keyboard = keyboard_check_pressed(vk_space);
velv += gravi;
velv = clamp(velv, -12, 12);

if(place_meeting(x, y + velv, obj_collision)){
	while(!place_meeting(x, y + sign(velv), obj_collision)){
		y += sign(velv);
	}
	velv = 0;
	place = true;
}
y += velv;

if(place == true && _keyboard){
	gravi *= -1;
	place = false;
}
