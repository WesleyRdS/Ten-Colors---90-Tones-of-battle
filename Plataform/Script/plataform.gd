extends Area2D

@export var _name: String
@export var _player: CharacterBody2D


var busy = false
var clickable = false

func _ready():
	$Number.text = _name


func _process(_delta):
	if busy == false:
		if Input.is_action_pressed("RightClick"):
			if global.plataform_position != Vector2.ZERO:
				_player._moves_avaliables = []
				_player.position.x = global.plataform_position.x
				_player.position.y = global.plataform_position.y - 15

func _on_body_entered(_body):
	if _player.is_in_group("Player"):
		busy = true
		_player._plataform = self
		
	

func _on_body_exited(_body):
	if _player.is_in_group("Player"):
		busy = false


func _on_mouse_entered():
	clickable = true
	for i in _player._moves_avaliables:
		if i == _name:
			global.plataform_position = position


func _on_mouse_exited():
	clickable = false
	global.plataform_position = Vector2.ZERO
