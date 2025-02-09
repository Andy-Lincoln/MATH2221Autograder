w = 0;
n = 1;
M = zeros(3,3);
dis(M);
while checkWIn ==1;
if w ==0 & n <=9
    if mod(n,2) == 1
        dis('Player A')
    else
            dis('Player B')
    end
    i = input('Please input the desired row number:')
    j= input ('Please input the desired column number:')