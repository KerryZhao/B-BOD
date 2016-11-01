//Splits a string into an array by a given delim
//argument0 - string to split
//argument1 - delim to split at

var text = argument0;
var splitArray;
var splitCount = 0;
for(var splitPos=string_pos(argument1, text);splitPos!=0;splitPos=string_pos(argument1, text)){
    splitArray[splitCount++] = string_copy(text, 0, splitPos-1);
    text = string_copy(text, splitPos+1, string_length(text)-splitPos);
}
splitArray[splitCount] = text;
return splitArray;
