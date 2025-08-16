extends Area2D
@onready var sound = $AudioStreamPlayer2D
func _on_body_entered(body):
	var temp_sound = sound.duplicate()
	get_tree().current_scene.add_child(temp_sound)
	temp_sound.global_position = global_position
	temp_sound.play()
	queue_free()
