/// @description change thoughts to be when you're still for a while


//follow view
x = objPlayer.x; y = objPlayer.y;

//check if pressing spacebar then show map if pressed
global.key_interact = keyboard_check(vk_space) || (gamepad_button_check(0,gp_face2));
if global.key_interact then	showMap = true else showMap = false;

//make standing still var count up then trigger
if keyboard_check(vk_nokey) then global.still++ else global.still = 0;

//randomise his thought bubble
if !(room == rm4Ending){

	if keyboard_check(vk_anykey) {
		thoughtBubbleContents =  irandom_range(0, 4);
		show_debug_message("not end room");
		}
}

if (room == rm4Ending){
	if keyboard_check(vk_anykey) {
		thoughtBubbleContents =  irandom_range(5, 6);
		show_debug_message("end room");
	}
}

if thoughtBubbleContents = 0 or 4 then thoughtBubbleMessage = sprThoughtSpacebarSm;
if thoughtBubbleContents = 1 then thoughtBubbleMessage = sprThoughtKeepMovingSm;
if thoughtBubbleContents = 2 then thoughtBubbleMessage = sprThoughtBeingLostSm;
if thoughtBubbleContents = 3 then thoughtBubbleMessage = sprThoughtFindWaySm;
if thoughtBubbleContents = 5 then thoughtBubbleMessage = sprThoughtSoGlad;
if thoughtBubbleContents = 6 then thoughtBubbleMessage = sprThoughtIDidIt;

if global.still > 150 then showThoughtBubble = true else showThoughtBubble = false;
if showThoughtBubble = true then show_debug_message("GOTTA KEEP MOVING");

/*
if thoughtBubbleContents = 0 then thoughtBubbleMessage = "I can find my way";
if thoughtBubbleContents = 1 then thoughtBubbleMessage = "better keep moving";
if thoughtBubbleContents = 2 then thoughtBubbleMessage = "being lost is only temporary";
if thoughtBubbleContents = 3 then thoughtBubbleMessage = "I'd better check my map using spacebar";
*/