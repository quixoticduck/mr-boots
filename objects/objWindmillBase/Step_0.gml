/// @description exiting room code

// if the player has exited the room
//(co-ords are absolute, not in relation to the landmark obj)
if objPlayer.x < -100 
// if the player is above the object by less than 160px
and objPlayer.y > y-170
// if the player is below the object by less than 160px
and objPlayer.y < y+170 {
	room_goto_next();
	global.timePassed++;
	show_debug_message("windmill time passed++");
	}
	
scrDepthAndLighting();
