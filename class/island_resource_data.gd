@icon("res://class/database_16dp_E0E0E0_FILL1_wght400_GRAD0_opsz20.svg")
extends Resource
class_name IslandResourceData

#Description for class
##Resource used for island save data.

##Island name.
@export var Island_Name: String = ""

##The api key for the AI Horde.
@export var AI_Horde_API_Key: String = ""

##Apartment data.
@export var Apartments: Array[ApartmentResourceData]

##Set rather copyright Music is on or off.
@export var Copyright_Music: bool = 0

##Mall Data
@export var Mall_Data: Dictionary

##Other Data
@export var Other_Data: Dictionary

"user://island_save.tres"
