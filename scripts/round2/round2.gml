function round2(){
	// initiliaze the lemons round
	
	show_debug_message("round 2 the lemons are coming")
	
	show_debug_message("round 2 code happening")
	
	with game_controller {
		instance_create_depth(1366, 768, 0, oGlorb)
		instance_create_depth(1280, 64, 0, oLemon_opp)
		instance_create_depth(1280, 672, 0, oLemon_opp)
	}
}