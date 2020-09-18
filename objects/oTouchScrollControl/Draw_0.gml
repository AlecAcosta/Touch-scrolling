if (debugTouchScroll){
	var _side = 30
	draw_rectangle(x-(_side/2),y-(_side/2),x+(_side/2),y+(_side/2),false)
	draw_set_color(c_red)
	draw_rectangle(x-(_side/8),y-(_side/8),x+(_side/8),y+(_side/8),false)
	
	draw_set_color(c_white)
	
	draw_text(30,30,"touch time: "+string(endTime))
	draw_text(30,30*2,"touch distance: "+string(distance))
	draw_text(30,30*3,"flick: "+string(flick))
}