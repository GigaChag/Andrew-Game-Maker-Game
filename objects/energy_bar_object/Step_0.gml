
// Only calculate energy if game is not over and in round
if room == roundroom {
	visible = true
	var energy_portion = (oPlayer.energy)/oPlayer.starting_energy
    image_xscale = energy_portion * 10
} else { visible = false }