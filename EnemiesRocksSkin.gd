extends Sprite

var bullet_tex1 = preload("res://InGameAssets/Rocks/1rock.png")
var bullet_tex2 = preload("res://InGameAssets/Rocks/2rock.png")
var bullet_tex3 = preload("res://InGameAssets/Rocks/3rock.png")

func _ready():
	
	var random_generator = RandomNumberGenerator.new()
	random_generator.randomize()
	var random_value: int = random_generator.randf_range(1,4)
	if random_value == 1:
		texture = load("res://InGameAssets/Rocks/1rock.png")
	
	elif random_value == 2:
		texture = load("res://InGameAssets/Rocks/2rock.png")

	elif random_value == 3:
		texture = load("res://InGameAssets/Rocks/3rock.png")

	else:
		texture = load("res://InGameAssets/Rocks/4rock.png")
