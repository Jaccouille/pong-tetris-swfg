extends Area2D

const MOVE_SPEED = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y = position.y + delta * MOVE_SPEED

func _on_area_entered(area):
	if area.name == "Ball":
		area.direction = Vector2(-area.getDirection().x, randf() * 2 - 1).normalized()

func reset():
	position.y = -50
