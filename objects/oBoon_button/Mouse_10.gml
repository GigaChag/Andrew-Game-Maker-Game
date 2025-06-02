image_index = 1
show_tool_tip = true
var display_text = title

if is_tiered == true {
	var roman_tier = ["I", "II", "III"]

	display_text = string_concat(title, " ",  roman_tier[boon_tier])
}

oBoon_title_display.boon_description = description

oBoon_title_display.boon_title_to_display = string_upper(display_text)

oBoon_title_display.display_boon_title = true