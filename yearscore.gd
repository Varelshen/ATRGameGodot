extends Label


func _ready():
	GlobalScore.score = 2020

func _process(delta):
	self.text = str(GlobalScore.score)


func _on_aceleradores_body_entered(body):
	if DificultySelectionGlobal.difficul == 1:
		GlobalScore.score += 1
	else:
		GlobalScore.score += 2
	if RegistroCambioScore.registro == 0:
		RegistroCambioScore.registro = 1
	
	if GlobalScore.score == 2060:
		get_tree().change_scene("res://WinMenu.tscn")
