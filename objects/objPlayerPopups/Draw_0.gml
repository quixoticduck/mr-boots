 ///UI visuals for looking at map and opening map



if (showThoughtBubble = true)
{   
   draw_sprite(thoughtBubbleMessage,0,x, y-290)
}
                 
/*

if (showThoughtBubble = true)
{   
    draw_set_color(c_white);
    draw_roundrect(x-166,y-110,x+214,y-50,false);

    //shadow text color
    draw_set_color(c_ltgrey); //make text grey
    draw_set_halign(fa_center);
    //draw_set_font(fnt_default);
    draw_text(x+24,y-96, thoughtBubbleMessage) //text is slightly offset to create shadow

    //top text color
	draw_set_color(c_black); //make text black
    draw_set_halign(fa_center);
    draw_text(x+25,y-97,string_hash_to_newline(thoughtBubbleMessage))
}
*/

if (showMap = true)
{
    draw_sprite(sprMap,0,x,y-300);
}


/* unused stuff

if (show_text = 0)
{   
    show spacebar
    draw_sprite(sprBtnA,0,x,y+128);
}

draw_self();

draw_sprite(sprBtnB,0,x+64,y+128);

*/