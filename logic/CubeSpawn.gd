extends Path2D

export (PackedScene) var Cube


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_CubeSpawnTimer_timeout():
	randomize()
	$PathFollow2D.offset = randi()
	var cube = Cube.instance()
	add_child(cube)
	cube.position = $PathFollow2D.position
