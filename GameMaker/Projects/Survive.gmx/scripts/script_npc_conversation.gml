

if(mouse_check_button_pressed(mb_left) && countm == 0){

    message = "Look friend, I have something which might help you escape this dreadfull place";
    mouse_clear(mb_left);
    countm ++;
}

else if(mouse_check_button_pressed(mb_left) && countm >= 1){

    message = "if you help me escape, ill give you that information!";
    countm ++;
    
}
