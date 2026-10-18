extends CharacterBody2D

@onready var sprite_2d: Sprite2D = $Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	move_and_slide()


func _on_velocity_update(new_velocity: Vector2) -> void:
	velocity = new_velocity


func _on_rotation_update(new_angle: float) -> void:
	rotation_degrees = new_angle
