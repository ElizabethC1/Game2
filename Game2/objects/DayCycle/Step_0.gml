//Increment Time
seconds += time_increment;
minutes = seconds/60;
hours = minutes/60;

if (hours <= 12) {
	darkness = (hours/24);
}
else {
	darkness = ((24-hours)/12);
}

//Cycle Check
if(hours >= 24) {
	seconds = 0;
	day += 1;
}
//Spawn Enemies
if((hours >= 10) && (hours <= 16)){

	x = irandom_range (0,5000);
	y = irandom_range (0,5000);
	if(spawnDelay <=0){
		instance_create_layer(x, y, "Instances", objEnemy1);
		spawnDelay = 10;
	}
	else{
		spawnDelay-=1;
	}
}

//Room set ups and switches