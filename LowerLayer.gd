extends Sprite


var speed = 0.06


func _process(delta):
  rotation += speed * delta
