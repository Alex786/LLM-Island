extends Control

@onready var button_to_focus = $HBoxContainer/ButtonContainer/Button

func _ready() -> void:
	button_to_focus.grab_focus()
