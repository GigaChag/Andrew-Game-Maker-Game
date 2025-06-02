function resart_script(){
	with oGame_controller { instance_destroy()}
	with oPlayer { instance_destroy()}
	room_goto(StartRoom)
}