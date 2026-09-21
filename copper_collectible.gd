extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		# finds the owner of the scene tree (main node) and calls its score function 
		get_owner().add_score() 
		queue_free()
