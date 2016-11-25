

if(mouse_check_button_pressed(mb_left) && countm == 0){

    message = "Look friend,I have something which might help you escape this dreadfull place. If you help me escape too, ill give you that information! ";
    mouse_clear(mb_left);
    countm ++;
}

if(mouse_check_button_pressed(mb_left) && countm == 1){

    message = "";
    //mouse_clear(mb_left);
    alpha = 0;
}
