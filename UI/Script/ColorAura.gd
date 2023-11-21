extends Control

var _color_counter: int = 0
var _cursor_counter: int = 0
var _cursor_limiter: bool = false
var _color_limiter: bool = false
var desaccel: bool = false
@export var cursor: Sprite2D
@export var timer_cursor: Timer
@export var timer_color: Timer
@export var slow_timer: Timer
@export var _anim: AnimationPlayer
@export var codigo: Label

func _ready():
	_cursor_counter = 0
	_color_counter = 0


func _process(_delta):
	codigo.text = "Color: "+global.player_aura_color
	if desaccel:
		global._move_speed = 5.0
	else:
		global._move_speed = 25.0
	
	if _cursor_limiter == false:
		att_cursor()
		
	if _color_limiter == false:
		att_aura_color()
	
	active_effect()

func att_aura_color():
	if Input.is_action_pressed("Next"):
		desaccel = true
		slow_timer.start()
		if _color_counter < 9:
			_color_counter += 1
			_color_limiter = true
			timer_color.start()
		else:
			_color_counter = 0
			_color_limiter = true
			timer_color.start()
	elif Input.is_action_pressed("Back"):
		desaccel = true
		slow_timer.start()
		if _color_counter > 0:
			_color_counter -= 1
			_color_limiter = true
			timer_color.start()
		else:
			_color_counter = 9
			_color_limiter = true
			timer_color.start()
	else:
		pass
	
	if _color_counter == 0:
		_anim.play("Color_0")
	elif _color_counter == 1:
		_anim.play("Color_1")
	elif _color_counter == 2:
		_anim.play("Color_2")
	elif _color_counter == 3:
		_anim.play("Color_3")
	elif _color_counter == 4:
		_anim.play("Color_4")
	elif _color_counter == 5:
		_anim.play("Color_5")
	elif _color_counter == 6:
		_anim.play("Color_6")
	elif _color_counter == 7:
		_anim.play("Color_7")
	elif _color_counter == 8:
		_anim.play("Color_8")
	else:
		_anim.play("Color_9")
		
	


func att_cursor():
	if Input.is_action_pressed("ScrollUp"):
		desaccel = true
		slow_timer.start()
		if _cursor_counter > 0:
			_cursor_counter -= 1
			_cursor_limiter = true
			timer_cursor.start()
		else:
			_cursor_counter = 9
			_cursor_limiter = true
			timer_cursor.start()
	elif  Input.is_action_pressed("ScrollDown"):
		desaccel = true
		slow_timer.start()
		if _cursor_counter < 9:
			_cursor_counter += 1
			_cursor_limiter = true
			timer_cursor.start()
		else:
			_cursor_counter = 0
			_cursor_limiter = true
			timer_cursor.start()
	else:
		pass
		
	if _cursor_counter == 0:
		cursor.position = Vector2(-18.0,-2.0)
	elif _cursor_counter == 1:
		cursor.position = Vector2(-17.0,0.0)
	elif _cursor_counter == 2:
		cursor.position = Vector2(-16.0,2.0)
	elif _cursor_counter == 3:
		cursor.position = Vector2(-15.0,4.0)
	elif _cursor_counter == 4:
		cursor.position = Vector2(-14.0,6.0)
	elif _cursor_counter == 5:
		cursor.position = Vector2(-13.0,8.0)
	elif _cursor_counter == 6:
		cursor.position = Vector2(-12.0,10.0)
	elif _cursor_counter == 7:
		cursor.position = Vector2(-11.0,12.0)
	elif _cursor_counter == 8:
		cursor.position = Vector2(-10.0,14.0)
	else:
		cursor.position = Vector2(-9.0,16.0)


func active_effect():
	if _color_counter == 0 and _cursor_counter == 0:
		global.player_aura_color = "ff0000"
		
	elif _color_counter == 0  and _cursor_counter == 1 :
		global.player_aura_color = "8c0e0e"
		
	elif _color_counter == 0  and _cursor_counter == 2 :
		global.player_aura_color = "8c1c1c"
	
	elif _color_counter == 0  and _cursor_counter == 3:
		global.player_aura_color = "8c2a2a"
		
	elif _color_counter == 0 and _cursor_counter == 4:
		global.player_aura_color = "8c3838"
		
	elif _color_counter == 0 and _cursor_counter == 5:
		global.player_aura_color = "8c4646"
		
	elif _color_counter == 0 and _cursor_counter == 6:
		global.player_aura_color = "8c5454"
		
	elif _color_counter == 0 and _cursor_counter == 7:
		global.player_aura_color = "8c6262"
		
	elif _color_counter == 0 and _cursor_counter == 8:
		global.player_aura_color = "8c7070"
		
	elif _color_counter == 0 and _cursor_counter == 9:
		global.player_aura_color = "8c7e7e"
		
	elif _color_counter == 1 and _cursor_counter == 0:
		global.player_aura_color = "ff9900"
		
	elif _color_counter == 1 and _cursor_counter == 1:
		global.player_aura_color = "ffa31a"
		
	elif _color_counter == 1 and _cursor_counter == 2:
		global.player_aura_color = "ffad33"
		
	elif _color_counter == 1 and _cursor_counter == 3:
		global.player_aura_color = "ffb84c"
		
	elif _color_counter == 1 and _cursor_counter == 4:
		global.player_aura_color = "ffc266"
		
	elif _color_counter == 1 and _cursor_counter == 5:
		global.player_aura_color = "ffcc80"
		
	elif _color_counter == 1 and _cursor_counter == 6:
		global.player_aura_color = "ffd699"
		
	elif _color_counter == 1 and _cursor_counter == 7:
		global.player_aura_color = "ffe0b2"
		
	elif _color_counter == 1 and _cursor_counter == 8:
		global.player_aura_color = "ffebcc"
		
	elif _color_counter == 1 and _cursor_counter == 9:
		global.player_aura_color = "fff5e5"
		
	elif _color_counter == 2 and _cursor_counter == 0:
		global.player_aura_color = "ccff00"
		
	elif _color_counter == 2 and _cursor_counter == 1:
		global.player_aura_color = "bce517"
		
	elif _color_counter == 2 and _cursor_counter == 2:
		global.player_aura_color = "c1e52e"
		
	elif _color_counter == 2 and _cursor_counter == 3:
		global.player_aura_color = "c5e545"
		
	elif _color_counter == 2 and _cursor_counter == 4:
		global.player_aura_color = "cae55c"
		
	elif _color_counter == 2 and _cursor_counter == 5:
		global.player_aura_color = "cfe573"
		
	elif _color_counter == 2 and _cursor_counter == 6:
		global.player_aura_color = "d3e58a"
		
	elif _color_counter == 2 and _cursor_counter == 7:
		global.player_aura_color = "d8e5a1"
		
	elif _color_counter == 2 and _cursor_counter == 8:
		global.player_aura_color = "dce5b8"
		
	elif _color_counter == 2 and _cursor_counter == 9:
		global.player_aura_color = "e1e5cf"
		
	elif _color_counter == 3 and _cursor_counter == 0:
		global.player_aura_color = "33ff00"
		
	elif _color_counter == 3  and _cursor_counter == 1:
		global.player_aura_color = "39cc14"
		
	elif _color_counter == 3 and _cursor_counter == 2:
		global.player_aura_color = "49cc29"
		
	elif _color_counter == 3 and _cursor_counter == 3:
		global.player_aura_color = "5acc3d"
		
	elif _color_counter == 3 and _cursor_counter == 4:
		global.player_aura_color = "6acc52"
		
	elif _color_counter == 3 and _cursor_counter == 5:
		global.player_aura_color = "7acc66"
		
	elif _color_counter == 3 and _cursor_counter == 6:
		global.player_aura_color = "8bcc7a"
		
	elif _color_counter == 3 and _cursor_counter == 7:
		global.player_aura_color = "9bcc8f"
		
	elif _color_counter == 3 and _cursor_counter == 8:
		global.player_aura_color = "abcca3"
		
	elif _color_counter == 3 and _cursor_counter == 9:
		global.player_aura_color = "bcccb8"
		
	elif _color_counter == 4 and _cursor_counter == 0:
		global.player_aura_color = "00ff66"
		
	elif _color_counter == 4 and _cursor_counter == 1:
		global.player_aura_color = "12b352"
		
	elif _color_counter == 4 and _cursor_counter == 2:
		global.player_aura_color = "24b35d"
		
	elif _color_counter == 4 and _cursor_counter == 3:
		global.player_aura_color = "36b368"
		
	elif _color_counter == 4 and _cursor_counter == 4:
		global.player_aura_color = "47b372"
		
	elif _color_counter == 4 and _cursor_counter == 5:
		global.player_aura_color = "59b37d"
		
	elif _color_counter == 4 and _cursor_counter == 6:
		global.player_aura_color = "6bb388"
		
	elif _color_counter == 4 and _cursor_counter == 7:
		global.player_aura_color = "7db392"
		
	elif _color_counter == 4 and _cursor_counter == 8:
		global.player_aura_color = "8fb39d"
		
	elif _color_counter == 4 and _cursor_counter == 9:
		global.player_aura_color = "a1b3a8"
	
	elif _color_counter == 5 and _cursor_counter == 0:
		global.player_aura_color = "00ffff"
		
	elif _color_counter == 5 and _cursor_counter == 1:
		global.player_aura_color = "0f9999"
	
	elif _color_counter == 5 and _cursor_counter == 2:
		global.player_aura_color = "1f9999"
		
	elif _color_counter == 5 and _cursor_counter == 3:
		global.player_aura_color = "2e9999"
		
	elif _color_counter == 5 and _cursor_counter == 4:
		global.player_aura_color = "3d9999"
		
	elif _color_counter == 5 and _cursor_counter == 5:
		global.player_aura_color = "4c9999"
		
	elif _color_counter == 5 and _cursor_counter == 6:
		global.player_aura_color = "5c9999"
		
	elif _color_counter == 5 and _cursor_counter == 7:
		global.player_aura_color = "6b9999"
		
	elif _color_counter == 5 and _cursor_counter == 8:
		global.player_aura_color = "7a9999"
		
	elif _color_counter == 5 and _cursor_counter == 9:
		global.player_aura_color = "8a9999"
		
	elif _color_counter == 6 and _cursor_counter == 0:
		global.player_aura_color = "0066ff"
		
	elif _color_counter == 6 and _cursor_counter == 1:
		global.player_aura_color = "114ca6"
		
	elif _color_counter == 6 and _cursor_counter == 2:
		global.player_aura_color = "2156a6"
		
	elif _color_counter == 6 and _cursor_counter == 3:
		global.player_aura_color = "3260a6"
		
	elif _color_counter == 6 and _cursor_counter == 4:
		global.player_aura_color = "426aa6"
		
	elif _color_counter == 6 and _cursor_counter == 5:
		global.player_aura_color = "5374a6"
		
	elif _color_counter == 6 and _cursor_counter == 6:
		global.player_aura_color = "637ea6"
		
	elif _color_counter == 6 and _cursor_counter == 7:
		global.player_aura_color = "7488a6"
		
	elif _color_counter == 6 and _cursor_counter == 8:
		global.player_aura_color = "8592a6"
		
	elif _color_counter == 6 and _cursor_counter == 9:
		global.player_aura_color = "959ca6"
		
	elif _color_counter == 7 and _cursor_counter == 0:
		global.player_aura_color = "3300ff"
		
	elif _color_counter == 7 and _cursor_counter == 1:
		global.player_aura_color = "3613bf"
		
	elif _color_counter == 7 and _cursor_counter == 2:
		global.player_aura_color = "4526bf"
		
	elif _color_counter == 7 and _cursor_counter == 3:
		global.player_aura_color = "5439bf"
		
	elif _color_counter == 7 and _cursor_counter == 4:
		global.player_aura_color = "634cbf"
		
	elif _color_counter == 7 and _cursor_counter == 5:
		global.player_aura_color = "7360bf"
		
	elif _color_counter == 7 and _cursor_counter == 6:
		global.player_aura_color = "8273bf"
		
	elif _color_counter == 7 and _cursor_counter == 7:
		global.player_aura_color = "9186bf"
		
	elif _color_counter == 7 and _cursor_counter == 8:
		global.player_aura_color = "a199bf"
		
	elif _color_counter == 7 and _cursor_counter == 9:
		global.player_aura_color = "b0acbf"
		
	elif _color_counter == 8 and _cursor_counter == 0:
		global.player_aura_color = "cc00ff"
		
	elif _color_counter == 8 and _cursor_counter == 1:
		global.player_aura_color = "b216d9"
		
	elif _color_counter == 8 and _cursor_counter == 2:
		global.player_aura_color = "b62bd9"
		
	elif _color_counter == 8 and _cursor_counter == 3:
		global.player_aura_color = "ba41d9"
		
	elif _color_counter == 8 and _cursor_counter == 4:
		global.player_aura_color = "bf57d9"
		
	elif _color_counter == 8 and _cursor_counter == 5:
		global.player_aura_color = "c36cd9"
		
	elif _color_counter == 8 and _cursor_counter == 6:
		global.player_aura_color = "c782d9"
		
	elif _color_counter == 8 and _cursor_counter == 7:
		global.player_aura_color = "cc98d9"
		
	elif _color_counter == 8 and _cursor_counter == 8:
		global.player_aura_color = "d0add9"
		
	elif _color_counter == 8 and _cursor_counter == 9:
		global.player_aura_color = "d4c3d9"
		
	elif _color_counter == 9 and _cursor_counter == 0:
		global.player_aura_color = "ff0099"
		
	elif _color_counter == 9 and _cursor_counter == 1:
		global.player_aura_color = "f2189b"
		
	elif _color_counter == 9 and _cursor_counter == 2:
		global.player_aura_color = "f230a5"
		
	elif _color_counter == 9 and _cursor_counter == 3:
		global.player_aura_color = "f249ae"
		
	elif _color_counter == 9 and _cursor_counter == 4:
		global.player_aura_color = "f261b8"
		
	elif _color_counter == 9 and _cursor_counter == 5:
		global.player_aura_color = "f279c2"
		
	elif _color_counter == 9 and _cursor_counter == 6:
		global.player_aura_color = "f291cb"
		
	elif _color_counter == 9 and _cursor_counter == 7:
		global.player_aura_color = "f2aad5"
		
	elif _color_counter == 9 and _cursor_counter == 8:
		global.player_aura_color = "f2c2df"
		
	else:
		global.player_aura_color = "f2dae9"
		

	
func _on_cursor_timer_timeout():
	_cursor_limiter = false


func _on_color_timer_timeout():
	_color_limiter = false


func _on_slow_timer_timeout():
	desaccel = false
