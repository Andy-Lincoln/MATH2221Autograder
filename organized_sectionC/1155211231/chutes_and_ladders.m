function n = chutes_and_ladders()
ladders = [4 9 20 28 36 40 51 71 80; 14 31 38 84 44 42 67 91 81];
chutes = [16 47 49 56 62 64 87 93 95 98; 6 26 11 53 19 60 24 73 75 78];
position = 1;
n = 0;
while position < 100
    dice = randi([1,6]);
    n = n+1;
    
    position = position +dice;
    
    if position >100
        position = 100 - (position - 100);
    end
    
    [isLadder, idx] = ismember(position, ladders(1, :));
    if isLadder
        position = ladders(2,idx);
    end
    
    [isChute, idx] = ismember(position, chutes(1, :));
    if isChute
        position = chutes(2,idx);
    end
end
end


















