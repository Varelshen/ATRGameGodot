extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_MainMenu_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://MenuMain.tscn")
	


func _on_RestartGame_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Level1.tscn")
