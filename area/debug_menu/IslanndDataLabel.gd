extends Label

# get island data ready
@onready var Island_Data: IslandResourceData = preload("res://island_test_resource.tres")

# get label ready
@onready var Island_Data_Label = $"."

# convert residents_array to string
@onready var appart_to_string = str(len(Island_Data.Apartments))

func _ready():
	Island_Data_Label.text = "Island Name: " + Island_Data.Island_Name + "\n" + "Residents: " + appart_to_string
	
