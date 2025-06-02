var copy_of_boon_list = ds_list_create()
ds_list_copy(copy_of_boon_list, oGame_controller.boonlist)
	
ds_list_shuffle(copy_of_boon_list)

for(i = 0; i < 3; i++) {
	
	var boon_data_struct = oGame_controller.boonlist[i]
	
	var tier = array_shuffle(global.boon_picking_values.possible_boon_tiers)[0]
		
	var positions = [[341.5, 383.5], [683, 383.5], [1024.5, 383.5]]
	
	if boon_data_struct.tiered = false { tier = "" }
	
	var data_struct_for_boon_button = 
	{	
		title : boon_data_struct.boon_title,
		boon_tier : tier,
		description : boon_data_struct.description,
		select_function : boon_data_struct.boon_function,
		sprite_list : boon_data_struct.sprite_array,
		is_tiered : tiered
	}
	instance_create_depth(positions[i][0], positions[i][1], 0, oBoon_button, data_struct_for_boon_button)
}