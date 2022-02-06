/// @description Insert description here
// You can write your code in this editor
if global.twilight =true and musicChanged = false {
	audio_stop_sound(sndDay) show_debug_message("stop sound day");
	audio_play_sound(sndNight, 10, true)  show_debug_message("play sound night");
	musicChanged = true;
}