/// @despawn
//Cycle Check
//Increment Time
seconds += time_increment;
minutes = seconds/60;
hours = minutes/60;
if(hours >= 24) {
	seconds = 0;
}

if (hours > 16) {
	//despawn enemies
}
x += (irandom_range(-1, 1)) *4;
y += (irandom_range(-1, 1)) *4;