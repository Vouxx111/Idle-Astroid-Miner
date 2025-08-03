extends Label


func _ready() -> void:
	GameManger.moneyChange.connect(updateLabel)

func updateLabel():
	text = "$" + str(GameManger.money)
