state_text = 'idle';

var dis = point_distance(x, y, obj_prototype_player.x , obj_prototype_player.y);
if (keyboard_check_pressed(ord("Z")) && dis <= sight_range){
    state = script_text_conversation;

}
