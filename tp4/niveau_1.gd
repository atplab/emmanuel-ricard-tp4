extends Node2D

func _ready() -> void:
	Main.monnaies = 0

#func monnaie_touchee(body):
	#if body is Player:
	#	Main.augmenter_monnaies()
		#call_deferred("queue_free")



func _on_bouton_body_entered(body: Node2D) -> void:
	print(body.name)
	if body is Player:
		Main.porte_ouvrable = true
		$porte/porte.play("Open")
		$bouton/bouton.visible = false
		$bouton/bouton.queue_free()
	


func _on_porte_body_entered(body: Node2D) -> void:
	if body is Player:
		if Main.porte_ouvrable == true :
			Main.monnaies_fin_niveau1 = Main.monnaies
			get_tree().change_scene_to_file("res://niveau2.tscn")
		
