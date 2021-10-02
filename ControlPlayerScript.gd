extends StaticBody2D

var velocity = Vector2()
var speed = 300

func _process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_pressed("LefttClick") == true:
		velocity = velocity.normalized() * speed
		velocity = move_and_slide(velocity)
