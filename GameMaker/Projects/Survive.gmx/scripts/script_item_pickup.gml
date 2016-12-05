for (i = 0; i < maxItems; i++)
{
    if (global.inventory[i] == -1)
    {
        global.inventory[i] = argument0;
        if (argument0 == 0)
            key = true;
        if (argument0 == 1)
            match = true;
        if (argument0 == 2)
            pill = true;
        return (1);
    }
}
return (0);
