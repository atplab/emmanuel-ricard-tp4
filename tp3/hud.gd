extends Node2D


func _process(delta):
	$Label.text = str(Main.monnaies)


func _on_controles_pressed() -> void:
	$Menu.visible = true
	$controles.visible = false


func _on_menu_pressed() -> void:
	$Menu.visible = false
	$controles.visible = true
