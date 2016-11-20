///Creates a ball by the player calling this and shoots it with the given force
//argument0 - the type of ball to shoot
//argument1 - the x of the ball
//argument2 - the y of the ball
//argument3 - the xForce of the shot
//argument4 - the yForce of the shot
var tempBall = instance_create(argument1, argument2, argument0);
tempBall.shooter = id;
with(tempBall){
    physics_apply_force(other.x, other.y, argument3, argument4);
    if(physics_test_overlap(x, y, phy_rotation, obj_obstacle))
        instance_destroy();
}
