@tool
extends Node3D


@export_tool_button("force_ending", "Callable") var end := end_action
@export var ending : String = "Scroll_Bake_L1"
func end_action():
	DialogueDump.end(ending)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
