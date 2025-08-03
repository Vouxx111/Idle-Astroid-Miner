extends Node


signal scaleDown
signal moneyChange

var money := 0

var cps = 1
var layerMult = 1
var minerCount := 1
var minerDamage := 10
var astroidHealth := 100
var astroidHealthDefault := 100
var astroidLayerCount := 10
var astroidLayerCountDefault := 10


func _on_timer_timeout() -> void:
	money += cps * layerMult * minerCount
	astroidHealth -= minerDamage / 10.0
	moneyChange.emit()
	
	if astroidHealth <= 0:
		scaleDown.emit()
		astroidLayerCount -= 1
		astroidHealth = astroidHealthDefault
