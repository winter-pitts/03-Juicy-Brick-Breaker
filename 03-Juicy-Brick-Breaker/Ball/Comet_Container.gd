extends Node2D


func _physics_process(_delta):
	for c in get_children():
		if c.modulate.a <= 0 or c.modulate.v <= 0:
			c.queue_free()
	
