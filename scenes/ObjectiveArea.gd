extends Area2D

var you_win_ui = preload("res://scenes/YouWin.tscn")

@onready var animation_player = $"../AnimationPlayer"

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
		animation_player.play("fade_out")

func change_scene_to_prompt() -> void:
	get_tree().change_scene_to_packed(you_win_ui)
