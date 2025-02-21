extends StaticBody2D

func _physics_process(delta: float) -> void:
	global_position += Vector2(-6, 0)
	rotation -= 0.1
