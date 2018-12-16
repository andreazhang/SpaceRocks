if room == room_game{
	
	if audio_is_playing(msc_song)
		audio_stop_sound(msc_song)
	audio_play_sound(msc_song, 2, true)
	
	repeat 10 {
		var spawn_x = choose(irandom_range(0, room_width * 0.3), irandom_range(room_width * 0.3, room_width))
		var spawn_y = choose(irandom_range(0, room_height * 0.3), irandom_range(room_height * 0.3, room_height))
		instance_create_layer(spawn_x, spawn_y, "Instances", object_asteroid)
	}
	
	alarm[0] = 60;
	
	repeat 2 {
		var powerup_spawn_x = choose(irandom_range(room_width * 0.3, room_width *0.4), irandom_range(room_width * 0.6, room_width *0.7))
		var powerup_spawn_y = choose(irandom_range(room_height * 0.3, room_height *0.4), irandom_range(room_height * 0.6, room_height *0.7))
		
		instance_create_layer(powerup_spawn_x, powerup_spawn_y, "Instances", object_powerup)
	}
}