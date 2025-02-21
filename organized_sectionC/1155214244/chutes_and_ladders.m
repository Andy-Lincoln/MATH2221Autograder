function n = chutes_and_ladders()
p = 1;
n = 0;
up = [4,9,20,28,36,40,51,71,80];
upp = [14,31,38,84,44,42,67,91,81];
down = [16,47,49,56,62,64,87,93,95,98];
downn = [6,26,11,53,19,60,24,73,75,78];
while p ~= 100
    d = randi(6);
    n = n + 1;
    if p + d == 100
        return;
    end
    if p + d > 100
        p = p + (100 - (p + d));
    end
    p = p + d;
    for i = 1:9
        if p == up(i)
            p = upp(i);
        end
    end
    for j = 1:10
        if p == down(j)
            p = downn(j);
        end
    end
end
end
