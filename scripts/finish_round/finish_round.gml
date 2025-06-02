function finish_round(){
	show_debug_message("Round finished")
	room_goto(MenuRoom)
	
	oPlayer.visible = false
	oPlayer.speed = 0
	
	oPlayer.x = 682.5
	oPlayer.y = 0
	
	oPlayer.energy = 0
	
	oEnergy_bar_object.visible = false
	
	oGame_controller.ready_to_init_boon_buttons = true
}
