extends Area2D

@onready var animation_player = $"../AnimationPlayer"

func _on_body_entered(body: RigidBody2D) -> void:
	if body.name == "GreenShip":
		print("horray")
		animation_player.play("fade_out")

func change_scene_to_win() -> void:
	get_tree().change_scene_to_file("res://scenes/YouWin.tscn")
