function n=chutes_and_ladders()
p=1;
n=0;
global INPUT_VALUES INPUT_COUNTER;
function val = mock_randi(~)
    
    if INPUT_COUNTER > length(INPUT_VALUES)+1
        error('Ran out of test inputs - possible infinite loop');
    end
    val = INPUT_VALUES(INPUT_COUNTER);
    INPUT_COUNTER = INPUT_COUNTER + 1;
end

    INPUT_VALUES = [5 5 5 1 3 4 6 6 6 4 4 6 1 6 3 1 5 1 1 4 2 2 3 3 3 4 2 2 1 2 5 2 5 5 5 5 2 2 4 2 5 5 4 2 5 2 3 3 4 6 5 6 2 4 1 5 4 6 6 6 3];
    INPUT_COUNTER = 1;
    randi = @mock_randi;
while p~=100
d=randi(6);
if p+d<=100
    p=p+d;
else
    p=100-(p+d-100);
end
if p==4
    p=14;
elseif p==9
    p=31;
elseif p==20
    p=38;
elseif p==28
    p=84;
elseif p==36
    p=44;
elseif p==40
    p=42;
elseif p==51
    p=67;
elseif p==71
    p=91;
elseif p==80
    p=81;
elseif p==16
    p=6;
elseif p==47
    p=26;
elseif p==49
    p=11;
elseif p==56
    p=53;
elseif p==62
    p=19;
elseif p==64
    p=60;
elseif p==87
    p=24;
elseif p==93
    p=73;
elseif p==95
    p=75;
elseif p==98
    p=78;
end
n=n+1;
end
end