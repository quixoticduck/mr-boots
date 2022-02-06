function scrDepthAndLighting(){
	
	//walk in front of objects
	depth = 10-y;
	
	
	if global.night = false {
		if global.twilight = false{
		image_blend = make_color_hsv(25,70,255);
		 }
	
	if global.midday = true {image_blend = make_color_hsv(50,90,255);}
	
	if global.twilight = true {
			
		//lighting based on distance to lamp
		
			gpu_set_blendmode(bm_add);
			illumie = (700-distance_to_object(instance_nearest(x,y,objLamp)))/3;
			image_blend = make_color_hsv(illumie,40,100);
			gpu_set_blendmode(bm_normal);
			
		}
	}
	
	if global.night = true {
	
	//lighting based on distance to lamp
	illumie = (700-distance_to_object(instance_nearest(x,y,objLamp)))/3;
	image_blend = make_color_hsv(0,0,illumie);
	}
	
}