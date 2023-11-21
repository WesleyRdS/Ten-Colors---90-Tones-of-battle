extends Control


var restart: bool = false


func _physics_process(_delta):
	$Score.text = str(global.points)
	if restart:
		$Res.play()
		global.player_life = 2000
		global.enemy_life = 400
		


func _on_texture_button_pressed():
	restart = true


func _on_res_finished():
	get_tree().change_scene_to_file("res://Level/level.tscn")
