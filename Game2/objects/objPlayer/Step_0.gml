/// @description step

//movement input shit
	mRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	mLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	mUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
	mDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
	keyActivate = keyboard_check_pressed(vk_space);
	move = (mRight - mLeft) || (mDown -mUp);

//interact input
	Interact = keyboard_check_released(ord("E"));

//use input shit
	useItem = keyboard_check_pressed(vk_control); // right or left click
	attack = keyboard_check_pressed(vk_shift); // left click with weapon maybe

//menu input shit
	menu = keyboard_check_pressed(ord("P"));
	journal = keyboard_check_pressed(ord("J")); //im thinking we add the journal to the pause menu
	map = keyboard_check_pressed(ord("M"));
	bag = keyboard_check_pressed(ord("B")); //maybe cahnge this to "I" to follow predetermined inventory rules


//movement shit
	//to make sure the player always moves the same speed no matter the direction
	inputDirection = point_direction(0, 0, mRight-mLeft, mDown-mUp); 
	
	//make sure a logical error is not produced
	inputMagnitude = (mRight - mLeft != 0) || (mDown - mUp != 0);
	
	script_execute(state);

//interact
//Harvesting
	//PickUp
	//collects wood in a certain range 1
	nearestWood = instance_nearest(x,y,objItemWood);
	if (Interact and distance_to_object(nearestWood) < 10) {
		with (nearestWood) {
			instance_destroy();
		}
		//pickup a random amount between 1 and 3
		inventory_wood += floor(random(3)) + 1; //+ 1 prevents amount from being 0
	}
	nearestStone = instance_nearest(x,y,objItemStone);
	if (Interact and distance_to_object(nearestStone) < 10) {
		with (nearestStone) {
			instance_destroy();
		}
		//pickup a random amount between 1 and 3
		inventory_stone += floor(random(3)) + 1;  //+ 1 prevents amount from being 0
	}
	//Trees
	nearestTree = instance_nearest(x,y,objTree);
	if (mouse_check_button_released(mb_left) and distance_to_object(nearestTree) < 10) {
		//inventory_wood
		instance_create_layer(x+15,y, "Instances", objItemWood)
		//delete tree
		with (nearestTree) {
			instance_destroy();
		}
	}
	//Rocks
	nearestRock = instance_nearest(x,y,objRock);
	if (mouse_check_button_released(mb_left) and distance_to_object(nearestRock) < 10) {
		//inventory stone
		instance_create_layer(x+15,y, "Instances", objItemStone)
		//delete rock
		with (nearestRock) {
			instance_destroy();
		}
	}
//use shit
//menu shit