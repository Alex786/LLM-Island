@icon("res://class/build_16dp_E0E0E0_FILL1_wght400_GRAD0_opsz20.svg")
extends Node
class_name RoomSelect

#Description for class
##Node used to handle information about current room and handing transitions between rooms.

@onready var island_data: IslandResourceData = preload("res://island_test_resource.tres")
@onready var room_num: int

#@onready var scene = load("res://room/glossy_interior/glossy_interior.tscn")

func room(_random_room: Node) -> void:
	add_child(_random_room)


func _ready() -> void:
	room_num = randi_range(0, 0)
	var room_selected = island_data.Apartments[room_num].Interior_Resource.Interior_Scene.instantiate()
	room(room_selected)
