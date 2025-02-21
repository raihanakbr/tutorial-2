extends Area2D

@onready var anim_player = $"../AnimationPlayer"

func _on_body_entered(body: Node2D) -> void:
	anim_player.play("death")

func _restart() -> void:
	get_tree().reload_current_scene()
