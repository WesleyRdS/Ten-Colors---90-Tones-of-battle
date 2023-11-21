extends Control



func _on_texture_button_pressed():
	$Click.play()

func _on_click_finished():
	get_tree().change_scene_to_file("res://UI/inicial_screen.tscn")
