extends Button

@onready var exit_button: Button = $"."


func _on_pressed() -> void:
	get_tree().quit()
