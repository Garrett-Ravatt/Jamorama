extends TextureRect

var rand = RandomNumberGenerator.new()
var velocity = 0
var velocity2 = 0
var deceleration = .02

func _process(delta: float) -> void:
	position.y -= velocity
	velocity -= deceleration
	position.x += velocity2
	if position.y >= 0:
		velocity = 0
		position.y = 0
	if position.y == 0:
		if rand.randf() > .5:
			velocity = .5
	velocity2 += rand.randf_range(-.3,.3)
	if velocity2 > .6:
		velocity2 = .6
	if velocity2 < -.6:
		velocity2 = -.6
	
	
	if position.x > 1000:
		position.x = 1000
		
	if position.x < 0:
		position.x = 0
