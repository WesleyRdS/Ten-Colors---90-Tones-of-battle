extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	global.points = 0
	global.player_life = 2000
	global.enemy_life = 400
	global.level = self
	
func _physics_process(_delta):
	$Points.text = "Score: "+str(global.points)
	if global.points >= 22000:
		$what.play()
		$Life2.visible = true
	if global.enemy_life == 0:
		$Congratulations.play()
		


func _on_congratulations_finished():
	get_tree().change_scene_to_file("res://UI/winner.tscn")
