extends Node

@export var CurrentCharacter: SoulData
@export var Characters: Array[SoulData] = []

var CurIndex = 0


func next_character() -> void:
	CurIndex +=1
	if CurIndex < Characters.size():
		CurrentCharacter = Characters[CurIndex]
		#send signals to reset the png and dialogue
		
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
