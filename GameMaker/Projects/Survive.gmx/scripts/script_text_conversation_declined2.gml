if (characters < message_length) { //if current character count is less than the amount in current message* 
    draw = 1;
    obj_prototype_player.free = false;
    
     if (keyboard_check_pressed(ord("Z"))) {
        characters = message_length;
     }
     else {
        characters += increase * (1 + hold);
     }
    message_draw = string_copy(message[message_current], 0, characters); //copy string to current character
}
else { //if current character is more than the amount in the current message
    if (keyboard_check_pressed(ord("Z"))) { //if we press Z...
        if (message_current < message_end) { //if there are more messages left to show (0 -> 6, in our case)
            draw = 1;
            obj_prototype_player.free = false;
            message_current += 1; //increase the message by 1
            message_length = string_length(message[message_current]);  //get the new character length for message
            characters = 0; //set the characters back to 0
            message_draw = ""; //clear the drawn text
        } else {
            if(message_current == 2){
                draw = 0;
                obj_prototype_player.free = true;
                state = script_text_idle_declined2;
                //instance_destroy(); //destroy the object
            } else if (message_current == 1) {
                    draw = 0;
                    obj_prototype_player.free = true;
                    instance_destroy(); //destroy the object
                }
            }
        } else { //if our messages are done (we reach 6, in our case)...
            if(message_current == 0){
                global.showText2 = true;
                global.hint_text2 = "Press 'A' to accept and 'D' to decline";
            }
            if(keyboard_check_pressed(ord("A")) && count = 0){
                obj_prototype_npc2.state = script_npc_chase;
                global.showText2 = false;
                draw = 1;
                count = 1;
                obj_prototype_player.free = false;
                message_current += 1;
                message_length = string_length(message[message_current]);
                characters = 0; //set the characters back to 0
                message_draw = ""; //clear the drawn text
            }
            else if(keyboard_check_pressed(ord("D")) && count = 0){
                global.showText2 = false;
                draw = 1;
                count = 1;
                obj_prototype_player.free = false;
                message_current += 2;
                message_length = string_length(message[message_current]);
                characters = 0; //set the characters back to 0
                message_draw = ""; //clear the drawn text
            }
            
    }
}
