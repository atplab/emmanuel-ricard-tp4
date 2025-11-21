extends Node2D


func _on_coins_1_body_entered(body: Node2D) -> void:
	$coins/coins1.visible = false  
	Main.augmenter_monnaies()
	$coins/coins1.queue_free()
	$coins/coins.play()


func _on_coins_2_body_entered(body: Node2D) -> void:
	$coins/coins2.visible = false  
	Main.augmenter_monnaies()
	$coins/coins2.queue_free()
	$coins/coins.play()


func _on_bulle_sol_body_entered(body: Node2D) -> void:
	if body is Player:
		body.hide()
		body.process_mode = Node.PROCESS_MODE_DISABLED
		var timer = get_tree().create_timer(2)
		await timer.timeout
		get_tree().reload_current_scene()


func _on_gouttes_plafond_body_entered(body: Node2D) -> void:
	if body is Player:
		body.hide()
		body.process_mode = Node.PROCESS_MODE_DISABLED
		var timer = get_tree().create_timer(2)
		await timer.timeout
		get_tree().reload_current_scene()


func _on_coins_3_body_entered(body: Node2D) -> void:
	$coins/coins3.visible = false  
	Main.augmenter_monnaies()
	$coins/coins3.queue_free()
	$coins/coins.play()


func _on_coins_4_body_entered(body: Node2D) -> void:
	$coins/coins4.visible = false  
	Main.augmenter_monnaies()
	$coins/coins4.queue_free()
	$coins/coins.play()


func _on_coins_5_body_entered(body: Node2D) -> void:
	$coins/coins5.visible = false  
	Main.augmenter_monnaies()
	$coins/coins5.queue_free()
	$coins/coins.play()


func _on_coins_6_body_entered(body: Node2D) -> void:
	$coins/coins6.visible = false  
	Main.augmenter_monnaies()
	$coins/coins6.queue_free()
	$coins/coins.play()


func _on_coins_7_body_entered(body: Node2D) -> void:
	$coins/coins7.visible = false  
	Main.augmenter_monnaies()
	$coins/coins7.queue_free()
	$coins/coins.play()


func _on_coins_8_body_entered(body: Node2D) -> void:
	$coins/coins8.visible = false  
	Main.augmenter_monnaies()
	$coins/coins8.queue_free()
	$coins/coins.play()


func _on_coins_9_body_entered(body: Node2D) -> void:
	$coins/coins9.visible = false  
	Main.augmenter_monnaies()
	$coins/coins9.queue_free()
	$coins/coins.play()


func _on_coins_10_body_entered(body: Node2D) -> void:
	$coins/coins10.visible = false  
	Main.augmenter_monnaies()
	$coins/coins10.queue_free()
	$coins/coins.play()


func _on_coins_11_body_entered(body: Node2D) -> void:
	$coins/coins11.visible = false  
	Main.augmenter_monnaies()
	$coins/coins11.queue_free()
	$coins/coins.play()
	
func _on_coins_12_body_entered(body: Node2D) -> void:
	$coins/coins12.visible = false  
	Main.augmenter_monnaies()
	$coins/coins12.queue_free()
	$coins/coins.play()



func _on_coins_13_body_entered(body: Node2D) -> void:
	$coins/coins12.visible = false  
	Main.augmenter_monnaies()
	$coins/coins12.queue_free()
	$coins/coins.play()
