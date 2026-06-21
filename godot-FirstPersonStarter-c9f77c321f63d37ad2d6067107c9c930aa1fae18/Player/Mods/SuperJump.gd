extends Node

var original_jump_height

func apply(player):
	var movement_controller = player.get_node("MovementController")
	if movement_controller:
		original_jump_height = movement_controller.jump_height
		movement_controller.jump_height *= 2 # Bonus: double jump height
		print("Super Jump mod applied!")

func remove(player):
	var movement_controller = player.get_node("MovementController")
	if movement_controller:
		movement_controller.jump_height = original_jump_height
		print("Super Jump mod removed!")
