extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("You died!")
	timer.start() # triggers after 0.6s


func _on_timer_timeout():
	get_tree().reload_current_scene() # restarts the game
