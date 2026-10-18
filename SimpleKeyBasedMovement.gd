extends Node

signal velocity_update(velocity: Vector2)

const SPEED: float = 200.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _input(event: InputEvent) -> void:
	var velocity: Vector2 = Vector2.ZERO
	if Input.is_action_pressed("Left"):
		velocity.x -= 1
	if Input.is_action_pressed("Right"):
		velocity.x += 1
	if Input.is_action_pressed("Up"):
		velocity.y -= 1
	if Input.is_action_pressed("Down"):
		velocity.y += 1
	velocity = SPEED * velocity.normalized()
	velocity_update.emit(velocity)
	
