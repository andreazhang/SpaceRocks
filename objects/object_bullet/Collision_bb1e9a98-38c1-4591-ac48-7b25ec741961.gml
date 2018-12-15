instance_destroy()

with other{
	instance_destroy()
	
	if sprite_index == sprite_asteroid_big {
		repeat 2{
			var asteroid = instance_create_layer(x, y, "Instances", object_asteroid)
			asteroid.sprite_index = sprite_asteroid_medium
		}
	} else if sprite_index == sprite_asteroid_medium {
		repeat 2{
			var asteroid = instance_create_layer(x, y, "Instances", object_asteroid)
			asteroid.sprite_index = sprite_asteroid_small
		}
	}
	
	repeat 10 {
		instance_create_layer(x, y, "Instances", object_debris)
	}
}
