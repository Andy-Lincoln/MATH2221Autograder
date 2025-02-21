function n = chutes_and_ladders();
n=0;
b=1;
while b~=100
    d=randi(6);
    n=n+1;
    b=b+d;
    if b>100
        b=100-(d-(100-(b-d)));
    end
    switch b
        case 4
            b=14;
        case 9
            b=31;
        case 20
            b=38;
        case 28
            b=84;
        case 36
            b=44;
        case 40
            b=42;
        case 51
            b=67;
        case 71
            b=91;
        case 80
            b=81;
        case 16
            b=6;
        case 47
            b=26;
        case 49
            b=11;
        case 56
            b=53;
        case 62
            b=19;
        case 64
            b=60;
        case 87
            b=24;
        case 93
            b=73;
        case 95
            b=75;
        case 98
            b=78;
    end
end
n
            
