@tool
extends Node2D

@export_tool_button("import streams", "Callable") var setup_action = setup
func setup():
	voice_streams.clear()
	var dirp := "res://audio/"
	for path in DirAccess.open(dirp).get_files():
		if path.contains(".import"):
			continue
		var stream : AudioStream = load(dirp+path)
		voice_streams.append(stream)
		print(path)

@export var voice_streams : Array[AudioStream]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for stream in voice_streams:
		if stream != null:
			DialogueDump.audio_streams[stream.resource_path] = stream
	print(DialogueDump.audio_streams.keys())
			
	DialogueDump.ab = %AngelBalloon
	DialogueDump.pb = %PleaBalloon
	DialogueDump.db = %DevilBalloon
	DialogueDump.cm = %CharacterManager


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
