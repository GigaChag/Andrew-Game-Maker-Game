if oGame_controller.in_round = true && oGame_controller.is_game_over = false {
	if instance_number(oGlorb) = 0 {
		frames_without_glorb += 1
		if frames_without_glorb >= 60 {
			finish_round()
			frames_without_glorb = 0
			oGame_controller.in_round = false
			// he likes to reference himself in third person
		}
		
	}
} 

if oGame_controller.is_game_over = true {
	oGame_controller.in_round = false
	oGame_controller.is_game_over = false
	oPlayer.visible = false
	oPlayer.energy = 0
	oEnergy_bar_object.visible = false
	show_debug_message("you died 2")
	room_goto(GameOverRoom)
}

if oGame_controller.in_round = false {audio_pause_all()}

if runfunction != "none" {
	script_execute(runfunction)
	runfunction = "none"
	// a jank way for me to get around gamemakers room system and run code through an object in round room
}