extends Label
@onready var label = $"."
func _process(_delta):
	label.text = "FPS: " + str(Engine.get_frames_per_second())
