extends Node


@export var trueending := 0

@export var angelending := 0

@export var demonending := 0

var audio_streams : Dictionary[String, AudioStream] = {}

var players : Dictionary[String, AudioStreamPlayer] = {}

var ab : FreeBalloon
var pb : FreeBalloon
var db : FreeBalloon

var cm: CharacterManager

func end():
	pass

func new_character():
	cm.next_character()
	
func reset_character():
	cm.off()

func play_aud(s,b = false):
	var p := AudioStreamPlayer.new()
		
	add_child(p)
	p.stream = audio_streams[s]
	p.play()
	p.finished.connect(func(): stop_aud(s))
	players[s] = p

func stop_aud(s):
	if players.has(s):
		players[s].stop()
		players[s].queue_free()
		players.erase(s)
		
