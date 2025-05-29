// intialize

heavy_hitter_boon_description = "Increase shot damage by {0}%, but decrease shot velocity by {1}%"

nothing_boon_description = "does nothing"

expanded_fuel_stores_description = "Increases energy capacity by {0}%"

boon_list = ds_list_create()

ds_list_add(boon_list,
[heavy_hitter_boon_description, heavy_hitter],
[nothing_boon_description, nothing_boon],
[expanded_fuel_stores_description, expanded_fuel_stores]
)