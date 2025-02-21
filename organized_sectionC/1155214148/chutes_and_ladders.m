function n = chutes_and_ladders()
p=1; d=0; n=0;
while p~=100
    d=randi(6);
    p=p+d;
    if p>100
        p=200-p;
    end
    switch p
        case 4
                p=14;
            case 9
                p=31;
            case 16
                p=6;
            case 20
                p=38;
            case 28
                p=84;
            case 36
                p=44;
            case 40
                p=42;
            case 47
                p=26;
            case 49
                p=11;
            case 51
                p=67;
            case 62
                p=19;
            case 64
                p=60;
            case 71
                p=91;
            case 80
                p=81;
            case 87
                p=24;
            case 93
                p=73;
            case 95
                p=75;
            case 98
                p=78;
    end
    n=n+1;
end
end
            
