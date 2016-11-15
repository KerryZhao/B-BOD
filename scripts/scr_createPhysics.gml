///Creates physics for the current room with the given gravity and meters per pixel
//argument0 - meters per pixel
//argument1 - gravity

physics_world_create(argument0);
global.room_gravity = argument1;
physics_world_gravity(0, global.room_gravity);
