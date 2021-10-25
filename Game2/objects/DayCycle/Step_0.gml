//Increment Time
seconds += time_increment;
minutes = seconds/60;
hours = minutes/60;

darkness = hours/24-.3;

//Cycle Check
if(hours >= 24) {
	seconds = 0;
	day += 1;
}