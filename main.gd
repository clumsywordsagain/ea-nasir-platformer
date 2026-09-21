extends Node2D

var score: int = 0
@onready var score_label: Label = $CanvasLayer/ScoreLabel

func add_score():
	score += 1
	score_label.text = "Copper ingots: " + str(score)
