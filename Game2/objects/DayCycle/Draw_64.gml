//Darkness fit to camera
var c = light_color;
draw_set_alpha(darkness);
draw_rectangle_color(0,0, guiWidth, guiHeight, c,c,c,c, false);
draw_set_alpha(1);

var c = c_yellow;
draw_text_color(guiWidth-150,10,"Seconds: " + string(seconds), c,c,c,c, 1);
draw_text_color(guiWidth-150,25,"Minutes: " + string(minutes), c,c,c,c, 1);
draw_text_color(guiWidth-132,40,"Hours: " + string(hours), c,c,c,c, 1);
draw_text_color(guiWidth-123,55,"Days: " + string(day), c,c,c,c, 1);