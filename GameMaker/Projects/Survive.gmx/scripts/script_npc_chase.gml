state_text = 'chasing';

if(obj_prototype_player.free == true){

phy_active = true;

var dis = distance_to_object(obj_prototype_player);
var dir = point_direction(x,y, obj_prototype_player.x, obj_prototype_player.y);
/*
if(instance_place(phy_position_x, phy_position_y, obj_prototype_hiding_obstacle)) {
    isHiding = true;
} else {
    isHiding = false;
}
*/
if ( dis <= sight_range && dis >= stop_range)
{
    /*
    mp_grid_path(global.grid, path, x, y, (obj_prototype_player.x div 32)* 32 + 16,(obj_prototype_player.y div 32)* 32 + 16, 1);
    path_start(path, 2, path_action_stop, false);
    var px = path_get_point_x(global.grid, obj_prototype_player.x);
    var py = path_get_point_y(global.grid, obj_prototype_player.y);
    */
    var inst = instance_find(obj_prototype_player, 0);
    mp_potential_step_object(inst.x, inst.y, 2, obj_prototype_avoidable_obstacle);
    phy_position_x =  x; //lengthdir_x(2,dir);
    phy_position_y =  y; //lengthdir_y(2,dir);    
} 
else
{
   state = script_npc_stop;
   global.nSaved -= 1;
}
}
