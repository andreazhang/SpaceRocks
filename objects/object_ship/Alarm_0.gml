/// @description Delay

if keyboard_check(vk_space) {
	script_shoot_bullet()
	
	alarm[0] = global.fire_rate
} else {
	exit
}