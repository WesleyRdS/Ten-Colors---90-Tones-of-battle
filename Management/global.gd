extends Node


var plataform_position: Vector2 = Vector2.ZERO
var points: int = 0
var player_aura_color: String = ""
var level: Node2D
var minrange = 0
var maxrange = 0
var _move_speed: float = 25.0
var player_life: int = 100
var enemy_life: int = 400


func _process(_delta):
	if points <= 2200:
		minrange = 0
		maxrange = 9
	elif points <= 4400:
		minrange = 0
		maxrange = 19
	elif points <= 6600:
		minrange = 0
		maxrange = 29
	elif points <= 8800:
		minrange = 0
		maxrange = 39
	elif points <= 11000:
		minrange = 0
		maxrange = 49
	elif points <= 13200:
		minrange = 0
		maxrange = 59
	elif points <= 15400:
		minrange = 0
		maxrange = 69
	elif points <= 17600:
		minrange = 0
		maxrange = 79
	elif points <= 19800:
		minrange = 0
		maxrange = 89
	elif points <= 22000:
		minrange = 0
		maxrange = 89
	elif points <= 22400:
		pass
	else:
		pass
