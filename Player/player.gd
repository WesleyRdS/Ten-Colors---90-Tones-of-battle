extends CharacterBody2D

var _life: int
var _moves_avaliables: Array = []
@export var _plataform: Area2D
@export var _anim: AnimationPlayer
@export var aura: Sprite2D
@export var attack: Sprite2D


func _ready():
	_life = global.player_life
	global.player_aura_color =  "ffffff"

func _process(_delta):
	_life = global.player_life
	attack_active()
	if _plataform._name == "1":
		_moves_avaliables. append("2")
		_moves_avaliables. append("4")
	elif  _plataform._name == "2":
		_moves_avaliables. append("1")
		_moves_avaliables. append("3")
		_moves_avaliables. append("5")
	elif _plataform._name == "3":
		_moves_avaliables. append("2")
		_moves_avaliables. append("6")
	elif _plataform._name == "4":
		_moves_avaliables. append("1")
		_moves_avaliables. append("5")
		
	elif _plataform._name == "5":
		_moves_avaliables. append("2")
		_moves_avaliables. append("6")
		_moves_avaliables. append("4")
	else:
		_moves_avaliables. append("5")
		_moves_avaliables. append("3")
	att_aura()


func att_aura():
	aura.modulate = global.player_aura_color
	attack.modulate = global.player_aura_color
	
func attack_active():
	if Input.is_action_pressed("Attack"):
		_anim.play("Attack")
		$Atk.play()
	else:
		_anim.play("idle")


func _on_area_attack_area_entered(area):
	if area.is_in_group("Destructible"):
		area.get_parent().queue_free()


func _on_area_attack_body_entered(body):
	if body.is_in_group("Destructible"):
		if body.modulate == aura.modulate:
			global.points += 100
			$Point.play()
			if global.points > 22000:
				global.enemy_life -= 100
				$Enemydamage.play()
			body.queue_free()
