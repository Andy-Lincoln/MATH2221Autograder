function n = chutes_and_ladders()
p = 1;
x = [4 9 20 28 36 40 51 71 80 16 47 49 56 62 64 87 93 95 98;
    14 31 38 84 44 42 67 91 81 6 26 11 53 19 60 24 73 75 78];
n = 0;
global INPUT_VALUES INPUT_COUNTER;
INPUT_VALUES = [5 5 5 1 3 4 6 6 6 4 4 6 1 6 3 1 5 1 1 4 2 2 3 3 3 4 2 2 1 2 5 2 5 5 5 5 2 2 4 2 5 5 4 2 5 2 3 3 4 6 5 6 2 4 1 5 4 6 6 6 3];
INPUT_COUNTER = 1;
function val = mock_randi(~)
    
    if INPUT_COUNTER > length(INPUT_VALUES)+1
        error('Ran out of test inputs - possible infinite loop');
    end
    val = INPUT_VALUES(INPUT_COUNTER);
    INPUT_COUNTER = INPUT_COUNTER + 1;
end

randi = @mock_randi;
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

    
