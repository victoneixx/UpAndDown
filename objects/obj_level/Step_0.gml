if(global.level < 10){
	if(global.score >= global.score_list[global.level -1]){
		global.less_delay += 0.3;
		global.level += 1;
	}
}

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