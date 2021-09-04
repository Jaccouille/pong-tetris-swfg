extends Node

var ball_scene = load("res://ball.tscn")


export (PackedScene) var Mob

onready var score_left_node = $ScoreLeft
onready var score_right_node = $ScoreRight

var score_left = 0
var score_right = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	$BallTimer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func update_score(add_to_left):
	if add_to_left:
		score_left += 1
		score_left_node.set_text(str(score_left))
	else:
		score_right += 1
		score_right_node.set_text(str(score_right))
		
func _on_Timer_timeout():
	add_child(ball_scene.instance())
