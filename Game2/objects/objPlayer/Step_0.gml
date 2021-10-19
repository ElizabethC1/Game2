/// @description step

//movement input shit
	mRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	mLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	mUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
	mDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
	keyActivate = keyboard_check_pressed(vk_space);
	move = (mRight - mLeft) || (mDown -mUp);

//interact input
	Interact = keyboard_check_pressed(vk_space);

//use input shit
	useItem = keyboard_check_pressed(vk_control);
	attack = keyboard_check_pressed(vk_shift);

//menu input shit
	menu = keyboard_check_pressed(ord("P"));
	journal = keyboard_check_pressed(ord("J"));
	map = keyboard_check_pressed(ord("M"));
	bag = keyboard_check_pressed(ord("B"));


//movement shit
	//to make sure the player always moves the same speed no matter the direction
	inputDirection = point_direction(0, 0, mRight-mLeft, mDown-mUp); 
	
	//make sure a logical error is not produced
	inputMagnitude = (mRight - mLeft != 0) || (mDown - mUp != 0);
	
	script_execute(state);

//interact
//use shit
//menu shit