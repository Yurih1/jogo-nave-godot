extends Node2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass

func _on_Timer_timeout():
	var cena_inimigo = preload("res://cena_inimigo.tscn")
	
	var objeto_inimigo = cena_inimigo.instance()
	objeto_inimigo.global_position = $Position2D.global_position
	get_tree().root.add_child(objeto_inimigo)
	
	
	objeto_inimigo = cena_inimigo.instance()
	objeto_inimigo.global_position = $Position2D2.global_position
#	objeto_inimigo.get_node("Area2D").acelaracao = 300
	get_tree().root.add_child(objeto_inimigo)
	
	
	
