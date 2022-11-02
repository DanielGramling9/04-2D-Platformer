extends Area2D


func _ready():
	pass


func _on_Portal_entered(body):
	if body.name == "Player":
		if name == "Portal_to_2":
			Global.level = 2
			get_tree().change_scene("res://Levels/Level2.tscn")
