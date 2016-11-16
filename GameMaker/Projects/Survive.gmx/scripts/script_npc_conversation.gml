

if(mouse_check_button_pressed(mb_left) && count == 0){

    text = 'Look friend, I have something which might help you escape this dreadfull place';
    mouse_clear(mb_left);
    count ++;
}

else if(mouse_check_button_pressed(mb_left) && count == 1){

    text = 'if you help me escape, ill give you that!';
    count ++;
    
}
