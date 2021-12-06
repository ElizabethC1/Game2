// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateRoll(){
	//Movement
	hsp = lengthdir_x(sproll, direction);
	vsp = lengthdir_y(sproll, direction);
	
	mDistRemaining = max(0, mDistRemaining-sproll);
	var _collided = PlayerCollision();
	
	//Update sprite
	sprite_index = spriteRole;
	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = (CARDINAL_DIR * _totalFrames) + ((1 - (mDistRemaining / distRoll)) * _totalFrames);
	//see end of part4 of tutorial to fix if need be ", (_totalFrames - 1);"
	
	//Change State
	if(mDistRemaining <= 0){
		state = PlayerStateFree;
	}

}