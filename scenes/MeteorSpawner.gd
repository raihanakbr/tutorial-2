extends Node2D

var viewport_width = 1152
var viewport_height = 648
var offset = 20
var meteor = preload("res://scenes/Meteor.tscn")

@onready var spawn_timer = $Timer

func _ready() -> void:
	_start_timer()

func _start_timer() -> void:
	spawn_timer.wait_time = randi_range(1, 3)
	spawn_timer.start()

func _on_timer_timeout() -> void:
	var instance = meteor.instantiate()
	var random_x = randi_range(viewport_width + 10, viewport_width + 30)
	var random_y = randi_range(offset, viewport_height - offset)
	instance.global_position = Vector2(random_x, random_y)
	add_child(instance)
	
	_start_timer()
