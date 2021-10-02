extends Control
var new_pause_state

func _input(event):
	if event.is_action_pressed("pausa"):
		new_pause_state = not get_tree().paused
		get_tree().paused = new_pause_state
		visible = new_pause_state


func _on_ResumeGame_pressed():
	get_tree().paused = false
	visible = false


func _on_MainMenu_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://MenuMain.tscn")
