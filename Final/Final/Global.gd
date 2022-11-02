extends Node
var score = 0
var lives = 5
var max_lives = 5
var level = 1
var health= 100
var max_health = 100

func _unhandled_input(_event):
	if Input.is_action_pressed("quit"):
		get_tree().quit()


func increase_score(s):
	score += s

func decrease_health(h):
	health-= h

func decrease_lives(l):
	lives -= 1
	health = max_health
	if lives <=0:
		get_tree().change_scene("res://Levels/Game_Over.tscn")
