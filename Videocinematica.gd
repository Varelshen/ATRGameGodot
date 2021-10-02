extends VideoPlayer

func _ready():
	pass # Replace with function body.


func _on_Videocinematica_finished():
	get_tree().change_scene("res://Level1.tscn")

func _input(event):
	if event.is_action_pressed("SaltarEnter"):
		get_tree().change_scene("res://Level1.tscn")
