function basic_boon_code(boon){
	
	// increment the boon
	
	boon.times_selected += 1
	
	
	with(oBoon_button) {
		instance_destroy()
	}
	oBoon_title_display.display_boon_title = false
	
	instance_create_layer(683, 125, "instances", oNext_round_button)
	
	if boon.times_selected = boon.max_selections {
		
		// remove the boon from the global.boon_list pool
		// data can still be accessed from oGame_controller.{boon}
		
		var boon_index = array_get_index(global.boon_list, boon)
		array_delete(global.boon_list, boon_index, 1)
	}	
}