extends Node2D

@export var voice_streams : Array[AudioStream]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for stream in voice_streams:
		if stream != null:
			DialogueDump.audio_streams[stream.resource_path] = stream
			
	DialogueDump.ab = %AngelBalloon
	DialogueDump.pb = %PleaBalloon
	DialogueDump.db = %DevilBalloon
	DialogueDump.cm = %CharacterManager


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
