extends Node2D

func _ready() -> void:
	Main.monnaies = Main.monnaies_fin_niveau1

func _on_bulle_sol_body_entered(body: Node2D) -> void:
	if body is Player:
		body.hide()
		$player/mort.play()
		body.process_mode = Node.PROCESS_MODE_DISABLED
		var timer = get_tree().create_timer(2)
		await timer.timeout
	

func _on_gouttes_plafond_body_entered(body: Node2D) -> void:
	if body is Player:
		body.hide()
		$player/mort.play()
		body.process_mode = Node.PROCESS_MODE_DISABLED
		var timer = get_tree().create_timer(2)
		await timer.timeout
		get_tree().reload_current_scene()
