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


func _on_bouton_body_entered(body: Node2D) -> void:
	print(body.name)
	if body is Player:
		Main.porte_ouvrable2 = true
		$porte3/porte.play("Open")
		$bouton.queue_free()


func _on_porte_3_body_entered(body: Node2D) -> void:
	if body is Player:
		if Main.porte_ouvrable2 == true :
			Main.monnaies_fin_niveau1 = Main.monnaies
			get_tree().change_scene_to_file("res://niveau3.tscn")
