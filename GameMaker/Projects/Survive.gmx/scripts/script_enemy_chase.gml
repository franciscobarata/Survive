state_text = 'chasing';

var dis = distance_to_object(obj_prototype_player);
var dis1 = distance_to_object(obj_prototype_npc);



if ( dis <= sight_range){
    
    player_dir = point_direction(phy_position_x, phy_position_y, obj_prototype_player.x,obj_prototype_player.y);
    ldx = lengthdir_x(1.0,player_dir);
    ldy = lengthdir_y(1.0,player_dir);
    phy_position_x += ldx - sin(player_dir);
    phy_position_y += ldy - cos(player_dir);
    
}
else if (dis1 <= sight_range){
    player_dir = point_direction(phy_position_x, phy_position_y, obj_prototype_npc.x,obj_prototype_npc.y);
    ldx = lengthdir_x(1.0,player_dir);
    ldy = lengthdir_y(1.0,player_dir);
    phy_position_x += ldx - sin(player_dir);
    phy_position_y += ldy - cos(player_dir);
}
