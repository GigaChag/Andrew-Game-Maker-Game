function basic_boon_code(){
	with(oBoon_button) {
		instance_destroy()
	}
	boon_title_display.display_boon_title = false
	
	instance_create_layer(683, 125, "instances", oNext_round_button)
}