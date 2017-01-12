state_text = 'idle';

var dis = point_distance(x, y, obj_prototype_player.x , obj_prototype_player.y);
var dis1 = point_distance(x, y, obj_prototype_npc.x , obj_prototype_npc.y);

if (dis <= sight_range){

    state = script_enemy_chase;

}

else if (dis1 <= sight_range){

    state = script_enemy_chase;

}
