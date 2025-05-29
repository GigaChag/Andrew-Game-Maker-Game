function finish_round(){
	room_goto(MenuRoom)
	// get 3 boons
	var copy_of_boon_list = ds_list_create()
	ds_list_copy(copy_of_boon_list, game_controller.boon_list)
	
	ds_list_shuffle(copy_of_boon_list)
	
	var random_boon1 = ds_list_find_value(copy_of_boon_list,0)
	
	var random_boon2 = ds_list_find_value(copy_of_boon_list,1)
	
	var random_boon3 = ds_list_find_value(copy_of_boon_list,2)
	
	
	var ordered_boon_array = [random_boon1, random_boon2, random_boon3]
	for(i = 0; i < 3; i++) {
		var tier = irandom(2)
		
		var positions = [[160,192], [544, 192], [928, 192]]
		
		var data_struct_for_boon_button = 
		{
			description : ordered_boon_array[i][0],
			select_function : ordered_boon_array[i][1]
		}
		
		
		instance_create_layer(positions[i][0], positions[i][1], layer, oBoon_button, data_struct_for_boon_button)
	}
	
}