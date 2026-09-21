extends Node2D

var score: int = 0
@onready var score_label: Label = $CanvasLayer/ScoreLabel

func _ready() -> void:
	# Update the text immediately when the level loads so it doesn't show blank/editor text
	update_ui()

# Change the function name to 'item_picked_up' so the collectibles can find it
func item_picked_up() -> void:
	score += 1
	update_ui()

# A clean, reusable function just for updating the label text
func update_ui() -> void:
	score_label.text = "copper ingots: " + str(score)
