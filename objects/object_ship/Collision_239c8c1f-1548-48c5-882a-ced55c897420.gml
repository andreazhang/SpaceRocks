/// @description Ship picks up a powerup
with other
	switch sprite_index {
		case sprite_powerup_auto_shooting:
			if global.fire_rate > 10 && global.autoshooting {
				global.fire_rate -= 10
			}
			global.autoshooting = true
			instance_destroy()
			break
	}