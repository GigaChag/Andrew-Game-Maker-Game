if age > 60 then
{
	game_controller.is_game_over = true
	game_controller.in_round = true
	room_goto_next()
}