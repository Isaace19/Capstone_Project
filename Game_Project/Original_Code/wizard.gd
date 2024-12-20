extends CharacterBody2D


var input_dir

func _physics_process(delta: float) -> void:
	input_dir = Vector2.ZERO
	if Input.is_action_pressed("ui_down"):
		input_dir = Vector2(0,1)
		position.y += 10
	elif Input.is_action_pressed("ui_up"):
		input_dir = Vector2(0,-1)
		position.y -= 10
	elif Input.is_action_pressed("ui_right"):
		input_dir = Vector2(1,0)
		position.x += 10
	elif Input.is_action_pressed("ui_left"):
		input_dir = Vector2(-1,0)
		position.x -= 10
	velocity = input_dir*10000*delta
	move_and_slide()
