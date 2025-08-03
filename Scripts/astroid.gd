extends Node3D

const rotationSpeed = 0.005

func _physics_process(delta: float) -> void:
	rotation.y += rotationSpeed
	rotation.x += rotationSpeed
