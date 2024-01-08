extends Node2D


func get_upper_cat():
	%"cat sprites".region_rect.position.y = 0
	
func get_lower_cat():
	%"cat sprites".region_rect.position.y = 32
