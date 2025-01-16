extends Node3D


const MOB = preload("res://mob.tscn")

func _on_timer_timeout() -> void:
	var mob = MOB.instantiate()
	
	var mob_spawn_location = get_node("SpawnPath/SpawnLocation")
	mob_spawn_location.progress_ratio = randf()
	var player_position = $Player.position
	mob.initialize(mob_spawn_location.position, player_position)
	
	add_child(mob)
