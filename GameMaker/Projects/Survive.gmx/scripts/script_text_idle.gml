state_text = 'idle';
//write your messages in an array, starting at 0, like so
message[0] = "Wait, who are you? I've never seen you here.";
message[1] = "How are you outside?";
message[2] = "Nevermind, you explain me later if you want!";
message[3] = "Help me leave this place!";
message[4] = "If you do, i'll give you my Matches";
message[5] = "I managed to steal them from the kitchen";
message[6] = "Might be helpfull for something. Will you help me?";
message[7] = "Yes! Thank you for helping me, here, take the Matches";
message[8] = "Oh, really? Come back again if you change your mind";

message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 6; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //get the number of characters in the first message
var dis = point_distance(x, y, obj_prototype_player.x , obj_prototype_player.y);
if (dis <= sight_range){
    global.showText = true;
    global.hint_text = "Someone needs help nearby. Press 'Z' to talk";
    if(keyboard_check_pressed(ord("Z"))){
    state = script_text_conversation;
    } 
} else {
    global.showText = false;
}
