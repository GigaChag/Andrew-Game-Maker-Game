var copy_of_boon_list = []

array_copy(copy_of_boon_list, 0, global.boon_list, 0, array_length(global.boon_list))
	
array_shuffle_ext(copy_of_boon_list)

for(i = 0; i < 3; i++) {
	
	var boon_data_struct = copy_of_boon_list[i]
	
	var tier = array_shuffle(global.boon_picking_values.possible_boon_tiers)[0]
		
	var positions = [[341.5, 383.5], [683, 383.5], [1024.5, 383.5]]
	
	var data_struct_for_boon_button = 
	{	
		title : boon_data_struct.boon_title,
		boon_tier : tier,
		description : boon_data_struct.description,
		select_function : boon_data_struct.boon_function,
		sprite_list : boon_data_struct.sprite_array,
		is_tiered : boon_data_struct.tiered
	}
	instance_create_depth(positions[i][0], positions[i][1], 0, oBoon_button, data_struct_for_boon_button)
}