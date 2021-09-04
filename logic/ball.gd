extends Area2D

const DEFAULT_SPEED = 400

var _speed = DEFAULT_SPEED
var direction = Vector2.LEFT
onready var _screen_size = get_viewport_rect().size

onready var _initial_pos = position

func _process(delta):
	_speed += delta * 2
	position += _speed * delta * direction


func reset(for_left):
	position = _screen_size / 2
	if for_left:
		direction = Vector2.LEFT
	else:
		direction = Vector2.RIGHT
	_speed = DEFAULT_SPEED

func update_score():
	if position.x < 0:
		get_parent().update_score(false)
		reset(true)
	else:
		get_parent().update_score(true)
		reset(false)
