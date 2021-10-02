extends Sprite


var speed = 0.05


func _process(delta):
  rotation += speed * delta
