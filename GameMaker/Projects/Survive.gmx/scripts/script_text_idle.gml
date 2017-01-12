state_text = 'idle';
//write your messages in an array, starting at 0, like so
message[0] = "HEY!! You are not from this block... what's going on here?";
message[1] = "Don't tell me you managed to escape your block... Wow, this might be my chance to get out of here.
Look, I  hate this bastards more than anything. They destroyed my life....";
message[2] = "I had a wife and a kid, we lived happy in our own cosy house . . .";
message[3] = "Until one day, THEY came knocking, they said we had to go on a train to this vacation camp.
I smelled something wrong right away and refused to accept the offer. They then proceded to try and
take us by force, I tried to fight them . . . ";
message[4] = "And then, the world fell apart . . .";
message[5] = "They killed them . . .";
message[6] = "Just to show them as lesson to the other jews in my neighborhood.
I have no more reason to live except to survive somehow and help whoever is trying to kill 
these bastards.
You are my only hope to leave this place and fulfill my revenge, in exchange i'll give you my 
force and these matches I found.
You are my only hope . . .";
message[7] = "Yes! Thank you for helping me, here, take the Matches";
message[8] = "Oh, really? Well, guess i'll just wait for another oportunity";

message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 6; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.8; //the speed at which new characters are added
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
