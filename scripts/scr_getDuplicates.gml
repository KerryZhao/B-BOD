var tempList = ds_list_create();
var dup;
var numDup = 0;
var none = true;
for(var i=0;i<ds_list_size(argument0);i++){
    if(ds_list_find_index(tempList, argument0[| i])!=-1){
        dup[numDup++] = i;
        none = false;
    }
    else
        ds_list_add(tempList, argument0[| i]);
}
ds_list_destroy(tempList);
if(none)
    return -1;
else
    return dup;
