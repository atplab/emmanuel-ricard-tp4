extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if visible == false:
		return
	
	visible = false
	Main.augmenter_monnaies()
	$coins_sound.play()
	await $coins_sound.finished
	call_deferred("queue_free")
