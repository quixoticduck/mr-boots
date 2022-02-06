///scrGettingLost
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scrGettingLost(){
					
	if x < -160 or x > room_width+160 or y < -160 or y > room_height+160 then {
		// lostPlaceX  = random(room_width); lostPlaceY  = random(room_height); 
		lostMessageActive = true;
																	
		var list = ds_list_create();
			with (objZones) {
				ds_list_add(list, id);
			}
			ds_list_shuffle(list);
			var box = list[| 0],
				width = sprite_get_width(objPlayer.sprite_index),
				height = sprite_get_height(objPlayer.sprite_index),
				x1 = box.bbox_left + width,
				y1 = box.bbox_top + height,
				x2 = box.bbox_right - width,
				y2 = box.bbox_bottom - height;
			var rx = irandom_range(x1, x2),
				ry = irandom_range(y1, y2);

			//instance_create_layer(rx, ry, "Instances", objPlayer);
			objPlayer.x=rx; objPlayer.y=ry;
			ds_list_destroy(list);
			
			//if placeIsFree == true and lostMessageActive == true {
				if lostMessageActive == true {
				//x = lostPlaceX; y = lostPlaceY;
				instance_create_depth(x,y,-10000,objLostText) global.timePassed++ show_debug_message("time passed++");	
				lostMessageActive = false;
				//placeIsFree = false;
			}
		}
}
/*
		if place_free(lostPlaceX+70, lostPlaceY-70)
	and place_free(lostPlaceX-70, lostPlaceY+70)
	and place_free(lostPlaceX+70, lostPlaceY+70)
	and place_free(lostPlaceX-70, lostPlaceY-70) 
								
	if collision_rectangle(lostPlaceX+70, lostPlaceY+70, lostPlaceX-70, lostPlaceY-70, objPlayer, false, false) {
		placeIsFree = true;
	}
										
*/

//lostPlaceX = x;
//lostPlaceY = y;
//placeIsFree = false;
