image_speed = 0;
image_index = random(9);

if (place_meeting(x,y,objRiverGapTop)) 
or (place_meeting(x,y,objRiverGapLower))
or (place_meeting(x,y,objPath))
or (place_meeting(x,y,objRiver))
or (place_meeting(x,y,objPond))
or (place_meeting(x,y,objInactivePond))  
or (place_meeting(x,y,objBalloonBasket)) 
{
    instance_destroy();
}