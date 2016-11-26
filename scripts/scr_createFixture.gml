///Gets or creates a fixture from the given values
//argument0 - name of fixture
//argument1 - type of fixture (true - circle, false - box)
//argument2 - width/radius of fixture
//argument3 - height of fixutre (value doesn't matter if circle)
//argument4 - density
//argument5 - friction
//argument6 - linear damping
//argument7 - angular damping
//argument8 - restitution
//argument9 - sensor
//argument10 - kinematic

if(!ds_map_exists(global.fixtures, argument0)){
    global.fixtures[? argument0] = physics_fixture_create();
    if(argument1)
        physics_fixture_set_circle_shape(global.fixtures[? argument0], argument2);
    else
        physics_fixture_set_box_shape(global.fixtures[? argument0], argument2, argument3);
    physics_fixture_set_density(global.fixtures[? argument0], argument4);
    physics_fixture_set_friction(global.fixtures[? argument0], argument5);
    physics_fixture_set_linear_damping(global.fixtures[? argument0], argument6);
    physics_fixture_set_angular_damping(global.fixtures[? argument0], argument7);
    physics_fixture_set_restitution(global.fixtures[? argument0], argument8);
    physics_fixture_set_sensor(global.fixtures[? argument0], argument9);
    if(argument10)
        physics_fixture_set_kinematic(global.fixtures[? argument0]);
    physics_fixture_set_awake(global.fixtures[? argument0], true);
}
return global.fixtures[? argument0];
