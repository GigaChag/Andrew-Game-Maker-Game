if show_tool_tip = true {
	
	var roman_tier = ["I", "II", "III"]
	
	var tool_tip_string = string_concat(description, roman_tier[boon_tier])
	
	draw_tooltip(tool_tip_string, fntArial, c_white, c_black, 0.8);
}