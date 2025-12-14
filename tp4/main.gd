extends Node2D

var test = 0
var porte_ouvrable = false
var porte_ouvrable2 = false 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@export var monnaies = 0
var monnaies_fin_niveau1 = 0
var monnaies_fin_niveau2 = 0

signal monnaie_collectee

func augmenter_monnaies():
	monnaies += 1
	monnaie_collectee.emit(monnaies)
