if (mouse_check_button_pressed(mb_any)){
	yStart = y
	yStartMouse = mouse_y
	startTime = current_time
}

if (mouse_check_button(mb_any)){
	distance = mouse_y - yStartMouse
	y = yStart + distance
}
else{//flick (if you don't want the flick effect, comment or erase)
	if (flick > 0.1 && endTime < 250){
		y += (flickMultiplier * sign(distance) * flick)
		flick -= 0.010
		flick -= flick/30
	}
	else{
		flick = 0
	}
}

if (mouse_check_button_released(mb_any)){
	distance = mouse_y - yStartMouse
	endTime = current_time - startTime

	flick = abs(distance/endTime)
}

y = clamp(y,0,room_height)
//use to put a limit for the position in screen