extends KinematicBody2D

func _ready():
	pass # Replace with function body.

var movimento  = Vector2(0,0)
var acelaracao = 400 
var vida = 3
func _physics_process(delta):
	movimento.x = 0
	movimento.y = 0	
	if (Input.is_action_pressed("ui_left")):
		movimento.x = -acelaracao	
	if (Input.is_action_pressed("ui_right")):
		movimento.x = acelaracao
	if (Input.is_action_pressed("ui_up")):
		movimento.y = -acelaracao
	if (Input.is_action_pressed("ui_down")):
		movimento.y = acelaracao
	
	move_and_slide(movimento)
	
	if (Input.is_action_just_pressed("disparo")):
		var cena_disparo = preload("res://cena_disparo.tscn")
		var objeto_disparo = cena_disparo.instance()
		objeto_disparo.global_position = $Position2D.global_position
		get_tree().root.add_child(objeto_disparo)
	
	if (Input.is_action_just_pressed("Enter")):
		get_tree().reload_current_scene()
	
func recebendo_dano():
	vida -= 1
	if (vida<=0):
		hide()
		get_parent().get_node("Game Over").show()
				
		#queue_free()
		# Chama a tela de GAME OVER
	else:
		$Sprite/AnimationPlayer.play("recebendo_dano")
	
	if (vida==2):	
		get_parent().get_node("vida3").hide()
	if (vida==1):	
		get_parent().get_node("vida2").hide()
	if (vida==0):	
		get_parent().get_node("vida1").hide()
	
