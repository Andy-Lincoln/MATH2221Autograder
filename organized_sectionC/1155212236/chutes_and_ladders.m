function n = chutes_and_ladders()
p = 1;
x = [4 9 20 28 36 40 51 71 80 16 47 49 56 62 64 87 93 95 98;
    14 31 38 84 44 42 67 91 81 6 26 11 53 19 60 24 73 75 78];
n = 0;
while p ~= 100
    d = randi(6);
    p = d+p;
    n = n+1;
    for(i = 1:19)
        if x(1,i) == p
            p = x(2,i);
        end
    end
    if p > 100
        p = 200-p;
    end
end
end

    
