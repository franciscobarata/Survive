//stop

global.nSaved = 0

if(instance_place(phy_position_x, phy_position_y, obj_prototype_hiding_obstacle)) {
    isHiding = true;
} else {
    isHiding = false;
}


var dis = point_distance(x, y, obj_prototype_player.x , obj_prototype_player.y);

if (dis <= sight_range){
    state = script_npc_chase;    
}