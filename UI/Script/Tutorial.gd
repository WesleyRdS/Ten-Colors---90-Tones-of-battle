extends Control


var cont = 0
var repet = true
func _ready():
	cont = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	attText()


func attText():
	if repet:
		if cont == 0:
			$Animation.play("Presentation")
			repet = false
		elif cont == 1:
			$Animation.play("Move")
			repet = false
		elif cont == 3:
			$Animation.play("Tones")
			repet = false
		elif cont == 4:
			$Animation.play("Colors")
			repet = false
		elif cont == 5:
			$Animation.play("Final")
			repet = false
		elif cont == 6:
			get_tree().change_scene_to_file("res://Level/level.tscn")
		else: pass

func _on_button_pressed():
	cont += 1
	$Click.play()
	repet = true
