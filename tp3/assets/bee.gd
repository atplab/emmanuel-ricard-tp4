extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("collision")
	$bee.play("dead")
	$dead_bee.play()
	$dead_player.monitoring = false
	$dead_player.monitorable = false
	body.sauter()
	var timer = get_tree().create_timer(0.5)
	await timer.timeout
	queue_free()


func _on_dead_player_body_entered(body: Node2D) -> void:
	if body is Player:
		body.hide()
		$dead_player/mort.play()
		body.process_mode = Node.PROCESS_MODE_DISABLED
		var timer = get_tree().create_timer(2)
		await timer.timeout
		get_tree().reload_current_scene()
