function finish_round(){
	show_debug_message("Round finished")
	room_goto(MenuRoom)
	game_controller.ready_to_init_boon_buttons = true
}
