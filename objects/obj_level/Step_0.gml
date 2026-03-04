if(global.level < 10){
	if(global.score >= global.score_list[global.level -1]){
		var _pitch = random_range(1, 2)
		audio_play_sound(snd_levelup, 1, 0, , , _pitch);
		time_d -= global.less_delay;
		global.less_delay += 1.2;
		global.level += 1;
	}
}

//show_debug_message(time_d);
//show_debug_message(global.less_delay);

if(global.score >= global.best_score){
	global.best_score = global.score;
}

global.t_mil++;
if(global.t_mil = 59){
	global.t_sec++;
	global.t_mil = 0;
}

if(global.t_sec = 59){
	global.t_sec = 0;
	global.t_min++;
}

if(global.t_min = 59){
	global.t_min = 0;
	global.t_hou++;
}