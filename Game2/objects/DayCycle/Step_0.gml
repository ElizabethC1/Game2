//Increment Time
seconds += time_increment;
minutes = seconds/60;
hours = minutes/60;

if (hours <= 12) {
	darkness = (hours/24);
}
else {
	darkness = ((24-hours)/24);
}

//Cycle Check
if(hours >= 24) {
	seconds = 0;
	day += 1;
}