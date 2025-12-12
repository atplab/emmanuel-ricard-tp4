extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = str(Main.monnaies)

func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://homescreen.tscn")
