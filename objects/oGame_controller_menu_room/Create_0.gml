var copy_of_boon_list = ds_list_create()
ds_list_copy(copy_of_boon_list, oGame_controller.boon_list)
	
ds_list_shuffle(copy_of_boon_list)
	
var random_boon1 = ds_list_find_value(copy_of_boon_list,0)
	
var random_boon2 = ds_list_find_value(copy_of_boon_list,1)
	
var random_boon3 = ds_list_find_value(copy_of_boon_list,2)
	
	
var ordered_boon_array = [random_boon1, random_boon2, random_boon3]
for(i = 0; i < 3; i++) {
	var tier = irandom(2)
		
	var positions = [[341.5, 383.5], [683, 383.5], [1024.5, 383.5]]
	
	var data_struct_for_boon_button = 
	{	
		title : ordered_boon_array[i].boon_title,
		boon_tier : tier,
		description : ordered_boon_array[i].description,
		select_function : ordered_boon_array[i].boon_function,
		sprite_list : ordered_boon_array[i].sprite_array
	}
		
	// show_debug_message("About to creat hexagonal boon")
	// show_debug_message(string(ordered_boon_array[i][0]))
	instance_create_depth(positions[i][0], positions[i][1], 0, oBoon_button, data_struct_for_boon_button)
}