state_text = 'chasing';

if(obj_prototype_player.free == true){
var px = path_get_point_x(global.grid, obj_prototype_player.x);
var py = path_get_point_y(global.grid, obj_prototype_player.y);

phy_active = true;

var dis = distance_to_object(obj_prototype_player);
var dir = point_direction(x,y, obj_prototype_player.x, obj_prototype_player.y);

if(instance_place(phy_position_x, phy_position_y, obj_prototype_hiding_obstacle)) {
    isHiding = true;
} else {
    isHiding = false;
}

if ( dis <= sight_range && dis >= stop_range){

    phy_position_x +=  lengthdir_x(2,dir);
    phy_position_y +=  lengthdir_y(2,dir);

    
} else if( dis <= stop_range){

   state = script_npc_stop;
   global.nSaved -= 1;
}
}
