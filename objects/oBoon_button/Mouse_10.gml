image_index = 1
show_tool_tip = true

var roman_tier = ["I", "II", "III"]

var display_text = string_concat(title, " ",  roman_tier[boon_tier])

boon_title_display.boon_description = description

boon_title_display.boon_title_to_display = string_upper(display_text)

boon_title_display.display_boon_title = true