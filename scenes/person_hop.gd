extends TextureRect

var rand = RandomNumberGenerator.new()
var velocity = 0
var velocity2 = 0
var deceleration = .015

func _process(delta: float) -> void:
	position.y -= velocity
	velocity -= deceleration
	position.x += velocity2
	if position.y >= 71:
		velocity = 0
		position.y = 71
	if position.y == 71:
		if rand.randf() > .99:
			velocity = .9
	velocity2 += rand.randf_range(-.15,.15)
	if velocity2 > .99:
		velocity2 = .99
	if velocity2 < -.99:
		velocity2 = -.99
	
	
	if position.x > 1900:
		position.x = 1900
		
	if position.x < 0:
		position.x = 0
