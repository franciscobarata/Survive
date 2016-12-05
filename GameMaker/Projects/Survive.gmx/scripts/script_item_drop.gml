for (i = 0; i < maxItems; i++)
{
    if (global.inventory[i] == argument0)
    {
        global.inventory[i] = -1;
        if (argument0 == 0)
            key = false;
        if (argument0 == 1)
            match = false;
        if (argument0 == 2)
            pill = false;
        return (1);
    }
}
return (0);
