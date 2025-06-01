if display_boon_title {
	
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	
	draw_set_font(fntBerlinSansFB)
	draw_text_ext_color(x, y, boon_title_to_display, 20, 150, global.c_tanish, global.c_tanish, global.c_tanish,global.c_tanish, 1)
	
	draw_text_ext_color(x, y+100, boon_description, 20, 150, global.c_bananan_green_yellow, global.c_bananan_green_yellow, global.c_bananan_green_yellow, global.c_bananan_green_yellow, 1)
}