//Inventory
//draw_self(); //necessary to see player
//background
invWidth = 150;
invHeight = 75;
draw_set_color(c_white);
draw_rectangle(0,0, invWidth, invHeight, false);
draw_set_color(c_black);
draw_rectangle(0,0, invWidth, invHeight, true);
//text
lineHeight = 15;
draw_set_color(c_black);
draw_text(2,0*lineHeight, "Click = harvest");
draw_text(2,1*lineHeight, "'E' to pick up");
draw_text(2,2*lineHeight, "Wood: " + string(inventory_wood));
draw_text(2,3*lineHeight, "Stone: " + string(inventory_stone))