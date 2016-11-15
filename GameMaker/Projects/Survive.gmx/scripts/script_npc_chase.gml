state_text = 'chasing';

var dis = distance_to_object(obj_prototype_player);



if ( dis <= sight_range && dis >= stop_range){
    phy_position_x += sign(obj_prototype_player.x - x)* 1.5;
    phy_position_y += sign(obj_prototype_player.y - y)* 1.5;
    
} else if( dis <= stop_range){

    state = script_npc_idle;

}
