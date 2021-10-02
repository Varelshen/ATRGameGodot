extends Sprite

func _ready():
	scale.x = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if RegistroCambioScore.registro == 1 and DificultySelectionGlobal.difficul == 1:
		scale.x = scale.x + 0.025
		RegistroCambioScore.registro = 0
	elif RegistroCambioScore.registro == 1 and DificultySelectionGlobal.difficul ==0:
		scale.x = scale.x + 0.050
		RegistroCambioScore.registro = 0
