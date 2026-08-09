extends TextureRect

var people := 1
var peopleImages: Dictionary[int,TextureRect] = {}
@export var newTexture: Texture

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return true
	
func _drop_data(at_position: Vector2, data: Variant) -> void:
	#data.visible = false
	#data.get_parent().remove_child(data)
	#add_child(data)
	peopleImages[people] = TextureRect.new()
	peopleImages[people].texture = newTexture 
	peopleImages[people].pivot_offset_ratio = Vector2(.5,1)
	
	peopleImages[people].anchor_top = 0
	peopleImages[people].anchor_left = 0.5
	peopleImages[people].anchor_right = .5
	peopleImages[people].anchor_bottom= 1
	peopleImages[people].scale = Vector2(.3,.3)
	
	add_child(peopleImages[people])
	
	people +=1
	
	
