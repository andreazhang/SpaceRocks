switch(room){
	case room_game:
		draw_text(20, 20, "global.points: " + string(global.points))
		draw_text(20, 40, "global.live: " + string(global.live))
		break
	
	case room_start:
		draw_set_halign(fa_center)
		var c = c_yellow
		draw_text_transformed_color(room_width/2, 100, "Space Rocks!", 3, 3, 0, c, c, c, c, 1)
		draw_text(room_width/2, 200, 
			"global.points 1,000 to win!\n\nUp: move\nLeft/Right: change direction\nSpace: shoot\n\n>> Press ENTER to start <<"
		)
		draw_set_halign(fa_left)
		break
		
	case room_win:
		draw_set_halign(fa_center)
		var c = c_green
		draw_text_transformed_color(room_width/2, 100, "Victory!\nYou rock!", 3, 3, 0, c, c, c, c, 1)
		draw_text(room_width/2, 300, 
			">> Press enter to restart <<"
		)
		draw_set_halign(fa_left)
		break
		
	case room_gameover:
		draw_set_halign(fa_center)
		var c = c_red
		draw_text_transformed_color(room_width/2, 100, "Game Over!\nNice try!", 3, 3, 0, c, c, c, c, 1)
		draw_text(room_width/2, 300, 
			"Final global.points: " + string(global.points) + "\n>> Press enter to restart <<"
		)
		draw_set_halign(fa_left)
		break		
}