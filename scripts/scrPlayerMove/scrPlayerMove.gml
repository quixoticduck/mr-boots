///scrPlayerMove

function scrPlayerMove(){
	
	//directions
	moveDown = keyboard_check(vk_down) or keyboard_check(ord("S"))
	moveUp = keyboard_check(vk_up) or keyboard_check(ord("W"))
	moveLeft = keyboard_check(vk_left) or keyboard_check(ord("A"))
	moveRight = keyboard_check(vk_right) or keyboard_check(ord("D"))
	
	//walking around
	if moveUp and place_free(x,y-5) then { y -= 5; image_speed = 0.3; }
	if moveDown and place_free(x,y+5) then { y += 5; image_speed = 0.3; }
	if moveLeft and place_free(x-5,y) then { x -= 5; image_speed = 0.3; image_xscale =  1; }
	if moveRight and place_free(x+5,y) then { x += 5; image_speed = 0.3; image_xscale = -1; }
	
	//staying still
	if !moveUp and !moveDown
		and !moveLeft and !moveRight
			then { image_speed = 0;
				}
				   
	//getting lost!


	/*
	if x < -160 or x > room_width+160 or y < -160 or y > room_height+160 then {
		x = random(room_width); y = random(room_height);
		instance_create_depth(x,y,-10000,objLostText) global.timePassed++ show_debug_message("time passed++");
	}
	*/
}