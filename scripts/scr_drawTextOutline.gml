///Draws the given text in the given with the given color outline
//Argument0 - x position to draw text
//Argument1 - y position to draw text
//Argument2 - text to draw
//Argument3 - color of text
//Argument4 - color of outline

//Get arguments
var x1 = argument0;
var y1 = argument1;
var text = argument2;
var color = argument3;
var outline = argument4;

//Draw outline
draw_text_colour(x1-1, y1-1, text, outline, outline, outline, outline, 1);
draw_text_colour(x1-1, y1, text, outline, outline, outline, outline, 1);
draw_text_colour(x1, y1-1, text, outline, outline, outline, outline, 1);
draw_text_colour(x1-1, y1+1, text, outline, outline, outline, outline, 1);
draw_text_colour(x1+1, y1-1, text, outline, outline, outline, outline, 1);
draw_text_colour(x1+1, y1, text, outline, outline, outline, outline, 1);
draw_text_colour(x1, y1+1, text, outline, outline, outline, outline, 1);
draw_text_colour(x1+1, y1+1, text, outline, outline, outline, outline, 1);

//Draw text
draw_text_colour(x1, y1, text, color, color, color, color, 1);
