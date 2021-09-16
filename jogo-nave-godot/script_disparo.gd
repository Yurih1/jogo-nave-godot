extends Area2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	translate(Vector2(0,delta*-100))
