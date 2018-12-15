if keyboard_check(vk_left) || keyboard_check(ord("A")){
	image_angle += 5
}

if keyboard_check(vk_right) || keyboard_check(ord("D")){
	image_angle -= 5
}

if keyboard_check(vk_up) || keyboard_check(ord("W")){
	//Add speed in a direction
	motion_add(image_angle, 0.05)
}

if keyboard_check(vk_down) || keyboard_check(ord("S")){
	//Add speed in a direction
	motion_add(image_angle, -0.05)
}

if keyboard_check_pressed(vk_space){
	var bullet = instance_create_layer(x, y, "Instances", object_bullet)
	bullet.direction = image_angle
		audio_play_sound(snd_zap, 1, false)
}

move_wrap(true, true, sprite_width / 2)