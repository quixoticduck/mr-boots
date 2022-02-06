/// @description exiting room code

scrDepthAndLighting();

// if the player has exited the room
//(co-ords are absolute, not in relation to the landmark obj)
if objPlayer.y < -100
// if the player is to the left of the object by less than 640px
and objPlayer.x > 1500
// if the player is to the right of the object by less than 640px
and objPlayer.x < 3700 {
	room_goto_next();
	global.timePassed++;
	show_debug_message("pond time passed++");
	}