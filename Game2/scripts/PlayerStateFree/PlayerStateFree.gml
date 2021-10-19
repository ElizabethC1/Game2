// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
	//finally the actual movement
	hsp = lengthdir_x(inputMagnitude * wlkspd, inputDirection)
	vsp = lengthdir_y(inputMagnitude * wlkspd, inputDirection)
	
	PlayerCollision();
	
	//movement animation
	var old_Sprite = sprite_index;
	
	//set run direction
		if (inputMagnitude != 0){
			direction = inputDirection;
			sprite_index = spriteRun;
			image_speed = 1;
		}
		else {
			sprite_index = spriteIdle;
			image_speed = 0;
		}
		if (old_Sprite != sprite_index){
			localFrame =0;
		}

	//Update Image Index
	PlayerAnimation();
	
	//Change State
	if(keyActivate){
		state = PlayerStateRoll;
		mDistRemaining = distRoll;
	}

}