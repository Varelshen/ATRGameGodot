extends KinematicBody2D


var velocity = Vector2()
var speed = 300
var step = 0
var positionBlack = Vector2()
var location = Vector2()
var PositionRespanw = Vector2()
var TamanoScala = Vector2()

var PositionYCalc: int
var PositionXCalc: int


func _ready():
	positionBlack.x= 0
	positionBlack.y= 0
	look_at(positionBlack)
	
	var random_generator = RandomNumberGenerator.new()
	random_generator.randomize()
	var random_value: int = random_generator.randf_range(0,4000)
	
	var random_generator2 = RandomNumberGenerator.new()
	random_generator2.randomize()
	var PosOrNegX: int = random_generator2.randf_range(1,3)
	var PosOrNegY: int = random_generator2.randf_range(1,3)
	var Tamano: float = random_generator2.randf_range(0.1,1.5)
	TamanoScala.x=Tamano
	TamanoScala.y=Tamano
	scale = TamanoScala
	
	if PosOrNegX == 1:
		PositionXCalc= random_value*1
	if PosOrNegX == 2:
		PositionXCalc = -random_value
	
	if PosOrNegY == 1 and PosOrNegX == 1:
		PositionYCalc = 4000 - PositionXCalc
	elif PosOrNegY == 1 and PosOrNegX == 2:
		PositionYCalc = 4000 -(PositionXCalc*-1)
	elif PosOrNegY == 2 and PosOrNegX == 1:
		PositionYCalc = 4000 - PositionXCalc
	else:
		PositionYCalc = (4000 -(PositionXCalc*-1))*-1
	
	PositionRespanw.x = PositionXCalc
	PositionRespanw.y = PositionYCalc
	
	
	print(PositionXCalc)
	print(PositionYCalc)
	print(PosOrNegY)
	print(PosOrNegX)
	
	position.x = PositionXCalc
	position.y = PositionYCalc

func _process(delta):
	velocity = move_and_slide(velocity)
	look_at(positionBlack)
	
	velocity = Vector2()
	
	velocity = Vector2(speed, 0).rotated(rotation)
	if step < 0:
		step = 0
	
	
	if step < 0.6:
		step = step + 0.002
	
	move_and_slide(positionBlack)
	
	velocity = velocity.normalized() * speed * step
	
	print(position.x)
	print(position.y)
	if position.x < 200 and position.x > -200:
		if position.y <200 and position.y >-200:
			velocity.x= 0
			velocity.y= 0
			positionBlack.x= 0
			positionBlack.y= 0
			look_at(positionBlack)
			var random_generator = RandomNumberGenerator.new()
			random_generator.randomize()
			var random_value: int = random_generator.randf_range(0,4000)
			var random_generator2 = RandomNumberGenerator.new()
			random_generator2.randomize()
			var PosOrNegX: int = random_generator2.randf_range(1,3)
			var PosOrNegY: int = random_generator2.randf_range(1,3)
			var Tamano: float = random_generator2.randf_range(0.1,1.5)
			TamanoScala.x=Tamano
			TamanoScala.y=Tamano
			scale = TamanoScala
			if PosOrNegX == 1:
				PositionXCalc= random_value*1
			if PosOrNegX == 2:
				PositionXCalc = -random_value
			if PosOrNegY == 1 and PosOrNegX == 1:
				PositionYCalc = 4000 - PositionXCalc
			elif PosOrNegY == 1 and PosOrNegX == 2:
				PositionYCalc = 4000 -(PositionXCalc*-1)
			elif PosOrNegY == 2 and PosOrNegX == 1:
				PositionYCalc = 4000 - PositionXCalc
			else:
				PositionYCalc = (3000 -(PositionXCalc*-1))*-1
			PositionRespanw.x = PositionXCalc
			PositionRespanw.y = PositionYCalc
			print(PositionXCalc)
			print(PositionYCalc)
			print(PosOrNegY)
			print(PosOrNegX)
			position.x = PositionXCalc
			position.y = PositionYCalc
