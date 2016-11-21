state_text = 'chasing';

phy_active = true;
global.nSaved = 1;

var dis = distance_to_object(obj_prototype_player);

if(instance_place(phy_position_x, phy_position_y, obj_prototype_hiding_obstacle)) {
    isHiding = true;
} else {
    isHiding = false;
}

if ( dis <= sight_range && dis >= stop_range){
    phy_position_x += sign(obj_prototype_player.x - x)* 1.5;
    phy_position_y += sign(obj_prototype_player.y - y)* 1.5;
    
} else if( dis <= stop_range){

    state = script_npc_stop;

}
