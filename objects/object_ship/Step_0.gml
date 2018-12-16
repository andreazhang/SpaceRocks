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
	script_shoot_bullet()
	if global.autoshooting
		alarm[0] = global.fire_rate
}

move_wrap(true, true, sprite_width / 2)
