extends Node2D


@export var _animation: AnimationPlayer
@export var vinculo: CharacterBody2D
@export var text: Label

func _ready():
	_animation.play("LifeInicialization")


func _process(_delta):
	attlife()
	text.text = "Life: "+str(vinculo._life)

func attlife():
	if vinculo._life == 2000:
		_animation.play("Life200")
	elif vinculo._life == 1900:
		_animation.play("Life190")
	elif vinculo._life == 1800:
		_animation.play("Life180")
	elif vinculo._life == 1700:
		_animation.play("Life170")
	elif vinculo._life == 1600:
		_animation.play("Life160")
	elif vinculo._life == 1500:
		_animation.play("Life150")
	elif vinculo._life == 1400:
		_animation.play("Life140")
	elif vinculo._life == 1300:
		_animation.play("Life130")
	elif vinculo._life == 1200:
		_animation.play("Life120")
	elif vinculo._life == 1100:
		_animation.play("Life110")
	elif vinculo._life == 1000:
		_animation.play("Life100")
	elif vinculo._life == 900:
		_animation.play("Life90")
	elif vinculo._life == 800:
		_animation.play("Life80")
	elif vinculo._life == 700:
		_animation.play("Life70")
	elif vinculo._life == 600:
		_animation.play("Life60")
	elif vinculo._life == 500:
		_animation.play("Life50")
	elif vinculo._life == 400:
		_animation.play("Life40")
	elif vinculo._life == 300:
		_animation.play("Life30")
	elif vinculo._life == 200:
		_animation.play("Life20")
	elif vinculo._life == 100:
		_animation.play("Life10")
	elif vinculo._life <= 0: 
		if vinculo.is_in_group("Player"):
			get_tree().change_scene_to_file("res://UI/game_over.tscn")
		elif vinculo.is_in_group("Enemy"):
			pass
		else:
			pass
	else:
		pass
