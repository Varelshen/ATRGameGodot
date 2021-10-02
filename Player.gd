extends KinematicBody2D


var velocity = Vector2()
var speed = 300
var step = 0

var is_dead = false

func _ready():
	pass

func _process(delta):
	
	
	velocity = move_and_slide(velocity)
	look_at(get_global_mouse_position())
	
	velocity = Vector2()
	
	velocity = Vector2(speed, 0).rotated(rotation)

	if Input.is_action_pressed("LefttClick")==false:
		step = step -0.008

	if Input.is_action_just_released("LefttClick"):
		step = step - 0
	
	if step < 0:
		step = 0
	
	velocity = velocity.normalized() * speed * step
	
	if Input.is_action_pressed("LefttClick") and step < 1.8:
		step = step + 0.006


func _on_DetectObstacles_body_entered(body):
	get_tree().change_scene("res://DieMenu.tscn")
