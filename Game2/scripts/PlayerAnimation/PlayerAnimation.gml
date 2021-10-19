// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAnimation(){
	//for 8 directions divide by 8
	var total_frames = sprite_get_number(sprite_index) / 4;
	image_index = localFrame + (CARDINAL_DIR * total_frames)
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
	//If animation would loop on next game step
	if (localFrame >= total_frames){
		animationEnd = true;
		localFrame -= total_frames;
	}
	else{
		animationEnd = false;
	}

}