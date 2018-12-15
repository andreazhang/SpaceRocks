if room != room_game
	exit

if choose (0, 1) == 0 {
	//Spawn at the left or right side
	var spawn_x = choose(0, room_width)
	var spawn_y = irandom_range(0, room_height)
} else {
	//Spawn at the top or bottom side
	var spawn_x = irandom_range(0, room_width)
	var spawn_y = choose(0, room_height)
}

instance_create_layer(spawn_x, spawn_y, "Instances", object_asteroid)

alarm[0] = irandom_range(60, 120)