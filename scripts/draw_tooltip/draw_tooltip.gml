function draw_tooltip(param_text, param_font, param_text_color, param_tooltip_color, param_alpha){
	 /*
	    param_text = text
	    param_font = font
	    param_text_color = text color
	    param_tooltip_color = tooltip color
	    param_alpha = alpha

	*/
	var text_width;
	var text_height;
	var old_alpha;
	var old_color;

	// Set alpha
	old_alpha = draw_get_alpha();
	draw_set_alpha(param_alpha);

	// Set font
	draw_set_font(param_font);

	// Set Aligns
	draw_set_valign(fa_bottom);

	text_width  = 5 + string_width(param_text);
	text_height = 5 + string_height(param_text);

	if ( ( ( mouse_x - room_width + text_width) <= ( room_width - 5) ) && ( mouse_x - text_width ) < 0 )
	{    
	    // Draw rect around the text
	    draw_roundrect_color( mouse_x, mouse_y - text_height, mouse_x + text_width, mouse_y + 5, param_tooltip_color, param_tooltip_color, false);

	    // Set color
	    old_color = draw_get_color();
	    draw_set_color(param_text_color);

	    // Draw the text inside the rect
	    draw_text( mouse_x, mouse_y - 2, param_text);

	    // Reset old color
	    draw_set_color(old_color);
	}
	else
	{
	    // Set alignment to right
	    draw_set_halign(fa_right);

	    // Draw rect around the text
	    draw_roundrect_color( mouse_x, mouse_y - text_height, mouse_x - text_width, mouse_y + 5, param_tooltip_color, param_tooltip_color, false);

	    // Set color
	    old_color = draw_get_color();
	    draw_set_color(param_text_color);    

	    // Draw the text inside the rect
	    draw_text( mouse_x, mouse_y - 2, param_text);    

	    // Reset old color
	    draw_set_color(old_color);    

	    // Reset alignment to left
	    draw_set_halign(fa_left);

	}

	// Reset alignment
	draw_set_valign(fa_middle);    


	// Reset alpha
	draw_set_alpha(old_alpha);
}