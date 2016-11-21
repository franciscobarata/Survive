state_text = 'idle';

var dis = point_distance(x, y, obj_prototype_player.x , obj_prototype_player.y);

if (dis <= sight_range){

    state = script_text_conversation;
    alpha = 1;
    message = "What? How did you escape?";
}
