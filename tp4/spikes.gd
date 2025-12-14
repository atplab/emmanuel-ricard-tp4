extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		body.hide()
		$mort.play()
		body.process_mode = Node.PROCESS_MODE_DISABLED
		var timer = get_tree().create_timer(2)
		await timer.timeout
		get_tree().reload_current_scene()
