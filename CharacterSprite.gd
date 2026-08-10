class_name CharacterSprite
extends Sprite3D

var isMoving: bool

func start(texture2: Texture):
	texture = texture2
	isMoving = true

func reset():
	position.x = 1.5
	
func isPickedUp():
	visible = false
	
func isPutDown():
	visible =true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.x >0 and isMoving:
		position.x -= .05
	if position.x < 0:
		position.x = 0
