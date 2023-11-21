extends CharacterBody2D

@export var timer_attack: Timer
@export var animation: AnimationPlayer

@export_category("Mecanics")
@export var attack1: PathFollow2D
@export var attack2: PathFollow2D
@export var attack3: PathFollow2D
@export var attack4: PathFollow2D
@export var attack5: PathFollow2D
@export var attack6: PathFollow2D

@onready var bomb: PackedScene = preload("res://Boss/attack_cowboy.tscn")
var can_attack: bool = true
var _life: int
var colors_attack:Array = [
	"ff0000",
	"8c7e7e",
	"8c7070",
	"8c6262",
	"8c5454",
	"8c4646",
	"8c3838",
	"8c2a2a",
	"8c1c1c",
	"8c0e0e",
	"ff9900",
	"fff5e5",
	"ffebcc",
	"ffe0b2",
	"ffd699",
	"ffcc80",
	"ffc266",
	"ffb84c",
	"ffad33",
	"ffa31a",
	"ccff00",
	"e1e5cf",
	"dce5b8",
	"d8e5a1",
	"d3e58a",
	"cfe573",
	"cae55c",
	"c5e545",
	"c1e52e",
	"bce517",
	"33ff00",
	"bcccb8",
	"abcca3",
	"9bcc8f",
	"8bcc7a",
	"7acc66",
	"6acc52",
	"5acc3d",
	"49cc29",
	"39cc14",
	"00ff66",
	"a1b3a8",
	"8fb39d",
	"7db392",
	"6bb388",
	"59b37d",
	"47b372",
	"36b368",
	"24b35d",
	"12b352",
	"00ffff",
	"8a9999",
	"7a9999",
	"6b9999",
	"5c9999",
	"4c9999",
	"3d9999",
	"2e9999",
	"1f9999",
	"0f9999",
	"0066ff",
	"959ca6",
	"8592a6",
	"7488a6",
	"637ea6",
	"5374a6",
	"426aa6",
	"3260a6",
	"2156a6",
	"114ca6",
	"3300ff",
	"b0acbf",
	"a199bf",
	"9186bf",
	"8273bf",
	"7360bf",
	"634cbf",
	"5439bf",
	"4526bf",
	"3613bf",
	"cc00ff",
	"d4c3d9",
	"d0add9",
	"cc98d9",
	"c782d9",
	"c36cd9",
	"bf57d9",
	"ba41d9",
	"b62bd9",
	"b216d9",
	"ff0099",
	"f2dae9",
	"f2c2df",
	"f2aad5",
	"f291cb",
	"f279c2",
	"f261b8",
	"f249ae",
	"f230a5",
	"f2189b"
]


const attacks_array = ["Idle", 
"Attack1", 
"Attack2", 
"Attack3", 
"Attack4", 
"Attack5",
"Attack6"]

func _ready():
	_life = global.enemy_life

func _physics_process(delta):
	_life = global.enemy_life
	att_progress_power(delta)
	if can_attack:
		var select = randi_range(0,6)
		if attacks_array[select] == "Idle":
			if global.points >= 22000:
				animation.play("Idle_2")
			else:
				animation.play(attacks_array[select])
		else:
			attack_instantiate(attacks_array[select],delta)


func att_progress_power(_delta:float):
	if attack1.get_child_count() > 0:
		attack1.progress += global._move_speed * _delta
	else:
		attack1.progress = 0
	if attack2.get_child_count() > 0:
		attack2.progress += global._move_speed * _delta
	else:
		attack2.progress = 0	
	if attack3.get_child_count() > 0:
		attack3.progress += global._move_speed * _delta
	else:
		attack3.progress = 0
	if attack4.get_child_count() > 0:
		attack4.progress += global._move_speed * _delta
	else:
		attack4.progress = 0
	if attack5.get_child_count() > 0:
		attack5.progress += global._move_speed * _delta
	else:
		attack5.progress = 0
	if attack6.get_child_count() > 0:
		attack6.progress += global._move_speed * _delta
	else:
		attack6.progress = 0


func attack_instantiate(data: String, _delta: float):
	var power = bomb.instantiate()
	if data == "Attack1":
		if attack1.get_child_count() == 0:
			if global.points >= 22000:
				animation.play("Attack_2")
			else:
				animation.play("Attack")
			power.cell.text = "1"
			attack1.add_child(power)
			var sort = randf_range(global.minrange, global.maxrange)
			power.modulate = colors_attack[sort] 
	
	elif data == "Attack2": 
		if attack2.get_child_count() == 0:
			if global.points >= 22000:
				animation.play("Attack_2")
			else:
				animation.play("Attack")
			power.cell.text = "2"
			attack2.add_child(power)
			var sort = randf_range(global.minrange, global.maxrange)
			power.modulate = colors_attack[sort]

	elif data == "Attack3":
		if attack3.get_child_count() == 0:
			if global.points >= 22000:
				animation.play("Attack_2")
			else:
				animation.play("Attack")
			power.cell.text = "3"
			attack3.add_child(power)
			var sort = randf_range(global.minrange, global.maxrange)
			power.modulate = colors_attack[sort]

	elif data == "Attack4":
		if attack4.get_child_count() == 0:
			if global.points >= 22000:
				animation.play("Attack_2")
			else:
				animation.play("Attack")
			power.cell.text = "4"
			attack4.add_child(power)
			var sort = randf_range(global.minrange, global.maxrange)
			power.modulate = colors_attack[sort]
	
	elif data == "Attack5":
		if attack5.get_child_count() == 0:
			if global.points >= 22000:
				animation.play("Attack_2")
			else:
				animation.play("Attack")
			power.cell.text = "5"
			attack5.add_child(power)
			var sort = randf_range(global.minrange, global.maxrange)
			power.modulate = colors_attack[sort]

	elif data == "Attack6":
		if attack6.get_child_count() == 0:
			if global.points >= 22000:
				animation.play("Attack_2")
			else:
				animation.play("Attack")
			power.cell.text = "6"
			attack6.add_child(power)
			var sort = randf_range(global.minrange, global.maxrange)
			power.modulate = colors_attack[sort]

	else:
		if global.points >= 22000:
			animation.play("Idle_2")
		else:
			animation.play("Idle")
	
	can_attack = false

	timer_attack.start()
	
func _on_timer_timeout():
	can_attack = true


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "Attack":
		animation.play("Idle")
