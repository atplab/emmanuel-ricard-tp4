extends Node2D


func _process(delta):
	$Label.text = str(Main.monnaies)


func _on_controles_pressed() -> void:
	$Menu.visible = true
	$controles.visible = false
	$Restart.visible = false
	get_tree().paused = false


func _on_menu_pressed() -> void:
	$Menu.visible = false
	$controles.visible = true
	get_tree().paused = true # ou false, pour désactiver la pause
	$Restart.visible = true


func _on_restart_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://homescreen.tscn")
	
