@icon("res://class/apartment_16dp_FC7F7F_FILL0_wght400_GRAD0_opsz20.svg")
extends Resource
class_name InteriorResource 

#Description for class
##Resource used to contain information about an interior such as name and the path to the PackedScene.
@export_category("Information")

##The human-readble name of the interior.
@export var Interior_Name: String = "Example Name"

##Packed Scene
@export var Interior_Scene: PackedScene

##Style of the interior used for character conversations.
@export_enum("Typical",
"Cool",
"Cute",
"Exotic",
"Modern",
"Goth",
"Western",
"Sci-fi", 
"Horror",
"Cartoon",
"Live Action") var Style: String = "Typical"

##How much the interior costs (In Dollars $).
@export var Cost: float = 0

@export_category("Sounds")

##(OPTIONAL) The human-readble name of the interior.
@export var Walking_Sound: AudioStream

##The human-readble name of the interior.
@export var Door_Sound: AudioStream

##The human-readble name of the interior.
@export var Door_Bell_Sound: AudioStream
