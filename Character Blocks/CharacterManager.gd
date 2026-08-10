extends Node

@export var CurrentCharacter: SoulData
@export var Characters: Array[SoulData] = []
@export var SinList: RichTextLabel
@export var VirtueList: RichTextLabel

var CurIndex = 0


func next_character() -> void:
	CurIndex +=1
	if CurIndex < Characters.size():
		CurrentCharacter = Characters[CurIndex]
		#send signals to reset the png and dialogue
		SinList.text = ""
		for x in Characters[CurIndex].sins:
			SinList.text += x + "\n"
			
		VirtueList.text = ""
		for x in Characters[CurIndex].virtues:
			VirtueList.text += x + "\n"
		
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	CurrentCharacter = Characters[CurIndex]
	SinList.text = ""
	for x in Characters[CurIndex].sins:
		SinList.text += x + "\n"
		
	VirtueList.text = ""
	for x in Characters[CurIndex].virtues:
		VirtueList.text += x + "\n"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
