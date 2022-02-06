/// @description cheat codes
if keyboard_check(vk_backspace) {
    cheat = get_string("Please enter cheat code!","")
    // if you want explanation text inside of the textbox don't leave it empty above

	if cheat = "next" {
			room_goto_next();
			global.timePassed++;
		}

	if cheat = "night" {
			global.night = true;
		}
		
	if cheat = "twilight" {
			global.night = false;
			global.twilight = true;
			global.midday = false;
		}

	if cheat = "midday" {
			global.night = false;
			global.twilight = false;
			global.midday = true;
		}
		
	if cheat = "morning" {
			global.night = false;
			global.twilight = false;
			global.midday = false;
		}

	if cheat = "time" {
			global.timePassed++;
		}

	if cheat = "mute" {
 if !global.Pause
       {
       audio_pause_all();
       global.Pause = true;
	   show_debug_message("MUTED")
       }
  
	}
	
if cheat = "unmute" {
	if global.Pause
       {
       audio_resume_all();
       global.Pause = false;
	   show_debug_message("UNMUTE")
       }
	   
if cheat = "respawn" {
	scrGettingLost();
	}
	   
}
	
	
    /*
    if cheat = "ladder" {
        global.ladder_climb = true
    }
    
    else if cheat = "restart" {
        game_restart()
    }
    
    else if cheat = "speedup" {
        obj_player.movespeed +=1
    }

    else if cheat = "rocketdodo" {
        obj_player.movespeed +=8
    }    
        
    else if cheat = "slowdown" {
        obj_player.movespeed -=5
    }        
    
    else if cheat = "highjump" {
        obj_player.jumpspeed +=1
    }        

    else if cheat = "doublejump" {
        //global.jumpsmax +=1
        global.double_jump = true;
    }                    
    
    else if cheat = "lowgrav" {
        obj_player.grav +=0.1
    }       
    
    else if cheat = "mail" {
        //obj_management.lettercount+=1
    }  
    
        else if cheat = "orb" {
        global.orb_big +=1;
    } 
    
        else if cheat = "money" {
        global.moneys +=1;
    } 
	*/
}





