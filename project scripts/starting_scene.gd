extends Node2D

const menu_cat_scene: PackedScene = preload("res://project scenes/menu_cat.tscn")

func _ready():
	spawn_cats()

func spawn_cats():
	var positions: Array = $"cat spawning positions".get_children()
	var menu_cat: Node2D
	var ind: int
	while positions.size() != 1:
		ind = randi_range(0, positions.size() - 1)
		menu_cat = menu_cat_scene.instantiate()
		menu_cat.position = positions[ind].position
		add_child(menu_cat)
		positions.remove_at(ind)
