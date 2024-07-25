extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("You died!")
	 # slows down game when you die
	Engine.time_scale = 0.5
	# finds the collision shape of the player, since is the only one that can
	# collide with the killzone and this causes it to fall down the map
	body.get_node("CollisionShape2D").queue_free()
	timer.start() # triggers after 0.6s


func _on_timer_timeout():
	Engine.time_scale = 1 # resets time scale when restarting scene
	get_tree().reload_current_scene() # restarts the game
