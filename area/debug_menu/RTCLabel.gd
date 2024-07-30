extends Label

# make sure label is ready
@onready var RTClabel: Label = $"."

func _process(_delta):
	RTClabel.text = "RTC = " + Time.get_datetime_string_from_system(false, true)
