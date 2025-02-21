function n = chutes_and__ladders();
t = [4,14;9,31;20,38;28,84;36,44;40,42;51,67;72,91;80,81;16,6;47,26;49,11;56,53;62,19;64,60;87,24;93,73;95,75;98,78]
win = 0;
p = 1;
n = 0;
while win ~= 1
    d = randi([1,6]);
    p = p + d;
    if p > 100
        p = 100 - (p-100);
    end
    for i=1:19
        if p == t(i,1)
            p = t(i,2);
        end
    end
    if p == 100
        win = 1;
    end
    n = n+1;
end