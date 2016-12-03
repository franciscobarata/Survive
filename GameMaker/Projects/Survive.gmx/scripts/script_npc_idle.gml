//idle

phy_active = false;

var dis = point_distance(x, y, obj_prototype_player.x , obj_prototype_player.y);

if (dis <= sight_range){

    state = script_npc_conversation;

}
