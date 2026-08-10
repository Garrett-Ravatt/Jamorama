class_name CharacterManager
extends Node

@export var CurrentCharacter: SoulData
@export var Characters: Array[SoulData] = []
@export var SinList: RichTextLabel
@export var VirtueList: RichTextLabel
@export var VirtueScroll: TextureRect
@export var SinScroll: TextureRect
@export var Character: CharacterSprite
@export var DragSquare: TextureRect

var CurIndex = -1


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
		Character.start(Characters[CurIndex].characterTexture)
		
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
	
func On():
	SinScroll.visible = true
	VirtueScroll.visible = true
	
	DragSquare.visible = true

func Off():
	Character.reset()
	SinScroll.visible = false
	VirtueScroll.visible = false
	DragSquare.visible = false

func picked_up():
	Character.isPickedUp()
	
func put_down():
	Character.isPutDown()
