/// @description exiting room code

scrDepthAndLighting();

// if the player has exited the room (co-ords are absolute, not in relation to the landmark obj)
//MAKE SURE TO GET THE LESS OR MORE SYMBOL THE RIGHT WAY AROUND
if objPlayer.y > room_height+100
//if objPlayer.y > 6100
// if the player is to the left of the object by less than 640px
and objPlayer.x > 2200
// if the player is to the right of the object by less than 640px
and objPlayer.x < 3000 {
	room_goto_next();
	global.timePassed++;
	show_debug_message("balloon time passed++");
	}