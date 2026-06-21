extends CharacterBody3D

signal player_ready

func _ready():
	emit_signal("player_ready")
