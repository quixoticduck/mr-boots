/// @description exiting room code

scrDepthAndLighting();

// if the player has exited the room
//(co-ords are absolute, not in relation to the landmark obj)
if objPlayer.x < -100 
// if the player is above the object by less than 160px
and objPlayer.y > 2500
// if the player is below the object by less than 160px
and objPlayer.y < 3700 {
	room_goto_next();
	global.timePassed++;
	show_debug_message("windmill time passed++");
	}