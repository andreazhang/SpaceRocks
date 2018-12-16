var bullet = instance_create_layer(x, y, "Instances", object_bullet)
bullet.direction = image_angle
audio_play_sound(snd_zap, 1, false)