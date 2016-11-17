///Draws a triangle given the following parameters
//argument0 - the x position of the bottom of the triangle
//argument1 - the y position of the bottom of the triangle
//argument2 - the x position of the top of the triangle
//argument3 - the y position of the top of the triangle
//argument4 - the length of the sides
//argument5 - the angle of the triangle
//argument6 - the color of the triangle
//argument7 - the color of the outline of the triangle

//Get the arguments
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var height = point_distance(x1,y1,x2,y2);
var lengthSides = argument4;
var angle = argument5;
var color = argument6;
var outline = argument7;


///Draw the Arrow
x3 = x2+((x1-x2)*cos(angle)+(y1-y2)*sin(angle))*(lengthSides/height);
y3 = y2+((y1-y2)*cos(angle)-(x1-x2)*sin(angle))*(lengthSides/height);
x4 = x2+((x1-x2)*cos(angle)-(y1-y2)*sin(angle))*(lengthSides/height);
y4 = y2+((y1-y2)*cos(angle)+(x1-x2)*sin(angle))*(lengthSides/height);
draw_triangle_colour(x3, y3, x2, y2, x4, y4, color, color, color, false);
draw_triangle_colour(x3, y3, x2, y2, x4, y4, outline, outline, outline, true);

