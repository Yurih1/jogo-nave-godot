extends Area2D

func _ready():
	pass # Replace with function body.

var acelaracao = 150
var energia = 2
func _process(delta):
	if (energia<=0):
		queue_free()
	
	translate(Vector2(0,delta * acelaracao))

func _on_disparo_area_entered(area):
	area.queue_free()
	energia -= 1

func _on_player_body_entered(body):
	body.recebendo_dano()

	






