extends Control


func _on_quitter_pressed() -> void:
	$pasquitter.visible = true

func _on_pasquitter_pressed() -> void:
	$pasquitter.visible = false
	$controles.visible = false


func _on_controles_pressed() -> void:
	$controles.visible = false

func _on_controls_pressed() -> void:
	$controles.visible = true


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scene_initiale.tscn")


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://scene_initiale.tscn")


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	$controles.visible = true


func _on_area_2d_3_body_entered(body: Node2D) -> void:
	$pasquitter.visible = true
