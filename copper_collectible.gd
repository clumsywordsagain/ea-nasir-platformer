extends Area2D

func _ready() -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		if get_parent().has_method("item_picked_up"):
			get_parent().item_picked_up()
		
		$Sprite2D.visible = false
		$CollisionShape2D.set_deferred("disabled", true)
		
		remove_from_group("collectibles")
		
		await get_tree().process_frame
		
		var remaining = get_tree().get_nodes_in_group("collectibles").size()
		print("Items remaining: ", remaining)
		
		if remaining == 0:
			await get_tree().create_timer(3.0).timeout
			get_tree().change_scene_to_file("res://end_screen.tscn")
			
		queue_free()
