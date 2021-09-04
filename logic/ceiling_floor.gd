extends Area2D

export var _bounce_direction = 1

func _on_area_entered(area):
	if area.is_in_group("Balls"):
		area.direction = (area.direction + Vector2(0, _bounce_direction)).normalized()

#func _on_area_exited(area):
#	if name == "Floor" and area.is_in_group("cubes"):
#		area.destroy()

func _on_Floor_area_exited(area):
	if area.is_in_group("cubes"):
		area.queue_free()
