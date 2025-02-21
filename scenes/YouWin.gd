extends Control

var second_level = preload("res://scenes/SecondLevel.tscn")

@onready var anim_player = $AnimationPlayer

func _ready() -> void:
	anim_player.play("fade")

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_next_pressed() -> void:
	get_tree().change_scene_to_packed(second_level)
