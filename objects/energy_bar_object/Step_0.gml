
// Only calculate energy if game is not over and in round
if game_controller.is_game_over = false then
{
  if game_controller.in_round = true then
  {
    var energy_portion = (oPlayer.energy)/1000
    
    image_xscale = energy_portion * 10
  }
  else
  {
    visible = false
  }
}


