extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Hard_pressed():
	DificultySelectionGlobal.difficul = 1
	get_tree().change_scene("res://Cinematica.tscn")


func _on_Normal_pressed():
	DificultySelectionGlobal.difficul = 0
	get_tree().change_scene("res://Cinematica.tscn")
