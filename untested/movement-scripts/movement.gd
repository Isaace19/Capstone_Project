extends CharacterBody2D

# Speed of the character movement
var speed = 200

# Velocity variable to track movement
var velocity = Vector2.ZERO

# Called every frame to handle movement input
func _process(delta):
    # Reset velocity at the beginning of each frame
    velocity = Vector2.ZERO

    # Handle input for movement (WASD or arrow keys)
    if Input.is_action_pressed("ui_right") or Input.is_action_pressed("move_right"):
        velocity.x += 1
    if Input.is_action_pressed("ui_left") or Input.is_action_pressed("move_left"):
        velocity.x -= 1
    if Input.is_action_pressed("ui_down") or Input.is_action_pressed("move_down"):
        velocity.y += 1
    if Input.is_action_pressed("ui_up") or Input.is_action_pressed("move_up"):
        velocity.y -= 1

    # Normalize the velocity to prevent faster diagonal movement
    if velocity != Vector2.ZERO:
        velocity = velocity.normalized() * speed

    # Move the character using move_and_slide()
    move_and_slide()
