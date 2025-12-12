extends Node2D

func _ready() -> void:
	Main.monnaies = Main.monnaies_fin_niveau2


func _on_porte_3_body_entered(body: Node2D) -> void:
	if body is Player:
		if Main.porte_ouvrable2 == true :
			Main.monnaies_fin_niveau2 = Main.monnaies
			get_tree().change_scene_to_file("res://fin.tscn")
