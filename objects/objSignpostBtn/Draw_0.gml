/// @description show button sprite


if (showMap = 0) 
{   
    //show spacebar
    draw_sprite(sprBtnA,0,x,y-64);
}


draw_self();

if (showMap = 1)
{   
    draw_sprite(sprMap,0,x,y-64);
}

