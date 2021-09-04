extends Area2D

func _on_wall_area_entered(area):
	if area.is_in_group("Balls"):
		#oops, ball went out of game place, reset
		area.update_score()
