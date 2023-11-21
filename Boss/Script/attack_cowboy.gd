extends CharacterBody2D

@export var cell: Label



func _on_hit_box_area_entered(area):
	if area.is_in_group("HurtboxPlayer"):
		$playerDamage.play()
		$HitBox/Collision.set_deferred("disabled",true)
		global.player_life -= 100
	elif area.is_in_group("Plataform"):
		if cell.text == area._name:
			$Failure.play()
	else: pass
	
	




func _on_player_damage_finished():
	queue_free()


func _on_failure_finished():
	queue_free()
