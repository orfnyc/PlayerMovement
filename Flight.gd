extends Node

signal velocity_update(velocity: Vector2)
signal rotation_update(angle: float)

const MAX_SPEED: float = 250.0

var angle: float = -90.0
var speed: float = 0.0
var velocity: Vector2 = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var velocity_changed: bool = false
	if Input.is_action_pressed("Up"):
		speed += 100*delta
		velocity_changed = true
	if Input.is_action_pressed("Down"):
		speed -= 250*delta
		velocity_changed = true
	if Input.is_action_pressed("Left"):
		angle -= 180*delta
		velocity_changed = true
	if Input.is_action_pressed("Right"):
		angle += 180*delta
		velocity_changed = true
	if velocity_changed:
		speed = clamp(speed, 0, MAX_SPEED)
		velocity = speed * Vector2(cos(deg_to_rad(angle)), sin(deg_to_rad(angle)))
		velocity_update.emit(velocity)
		rotation_update.emit(angle+90.0)
