extends Sprite


var speed = 0.08


func _process(delta):
  rotation += speed * delta
