extends AudioStreamPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called evry frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("LefttClick") and  playing == false:
		play()
	if Input.is_action_just_released("LefttClick") and playing == true:
		stop()
