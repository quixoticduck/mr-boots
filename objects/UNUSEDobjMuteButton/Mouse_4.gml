/// @description mute/unmute when clicked
    if !global.Pause
       {
       audio_pause_all();
       image_index=1;
       global.Pause = true;
       }
    else if global.Pause
       {
       audio_resume_all();
       image_index=0;
       global.Pause = false;
       }
    
    



