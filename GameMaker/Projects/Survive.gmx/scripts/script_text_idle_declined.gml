state_text = 'idle';
count  = 0;
//write your messages in an array, starting at 0, like so
message[0] = "have you changed your mind?";
message[1] = "oh well, offer still stands";
message[2] = "Seriously? Thank you! Here's the Matches, let's go";
message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 0; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //get the number of characters in the first message
var dis = point_distance(x, y, obj_prototype_player.x , obj_prototype_player.y);
if (dis <= sight_range){
    global.showText = true;
    global.hint_text = "If you want to talk. Press 'Z' to talk";
    if(keyboard_check_pressed(ord("Z"))){
    state = script_text_conversation_declined;
    } 
} else {
    global.showText = false;
}
