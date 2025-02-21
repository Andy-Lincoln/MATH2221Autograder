function n=chutes_and_ladders()
turn=0;
position=1;
finish=0;
while finish==0
    turn=turn+1;
    d=randi(6);
    position=position+d;
    switch position %ladders
       case 4
           position=14;
       case 9
           position=31;
       case 20
           position=38;
       case 28
           position=84;
       case 36
           position=44;
       case 40
           position=42;
       case 51
           position=67;
       case 71
           position=91;
       case 80
           position=81;
    end
    switch position %chutes
       case 16
           position=6;
       case 47
           position=26;
       case 49
           position=11;
       case 56
           position=53;
       case 62
           position=19;
       case 64
           position=60;
       case 87
           position=24;
       case 93
           position=73;
       case 95
           position=75;
       case 98
           position=78;
    end
    if position==100 %win
        finish=1;
    end
    if position>100 %back
        position=100-(position-100);
    end
end
n=turn;
end