state_text = 'idle';
//write your messages in an array, starting at 0, like so
message[0] = "Are you free? Please help!";
message[1] = "I can't take this anymore, I don't have anything but please, help!";
message[2] = "I can't survive alone, I need help.";
message[3] = "I beg you!";
message[4] = "Oh my God, thank you! You will not regret it, i'll help in whatever I can!";
message[5] = "No please don't leave me here!";

message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 3; //5 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //get the number of characters in the first message
var dis = point_distance(x, y, obj_prototype_player.x , obj_prototype_player.y);
if (dis <= sight_range){
    global.showText2 = true;
    global.hint_text2 = "Someone needs help nearby. Press 'Z' to talk";
    if(keyboard_check_pressed(ord("Z"))){
    state = script_text_conversation2;
    } 
} else {
    global.showText2 = false;
}
