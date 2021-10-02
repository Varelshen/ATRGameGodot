extends Sprite


var speed = 0.10


func _process(delta):
  rotation += speed * delta
