extends Node3D

const rotationSpeed = 0.005

func _physics_process(delta: float) -> void:
	rotation.y += rotationSpeed
	rotation.x += rotationSpeed

func _ready() -> void:
	GameManger.scaleDown.connect(scale_down)

func scale_down():
	var scaleValue = 1.0 / GameManger.astroidLayerCountDefault
	scale -= Vector3(scaleValue, scaleValue, scaleValue)
