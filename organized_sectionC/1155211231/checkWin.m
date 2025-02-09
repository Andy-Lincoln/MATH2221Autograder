function w = checkWin(M)
a = max(sum(M,1));
b = max(sum(M,2));
c = M(1,1)+M(2,2)+M(3,3);
d = M(1,3)+M(2,2)+M(3,1);
e = min(sum(M,1));
f = min(sum(M,2));
if a==3||b==3||c==3||d==3
    disp('Player A wins');
    w = 1;
elseif e==(-3)||f==(-3)||c==(-3)||d==(-3)
    disp('Player B wins');
    w = 1
else
    disp('none of the players win');
    w = 0
end
w
