function w = checkWin(M)
u = sum(M,1);
v = sum(M,2);
w = 0;
for i = 1:3
    if u(i) == 3 || v(i) == 3
        w = 1;
    elseif u(i) == -3 || v(i) == -3
        w = -1;
    end
end
if trace(M) == 3 || trace(M) == -3
    w = trace(M)/3;
elseif M(1,3) + M(2,2) + M(3,1) == 3
    w = 1;
elseif M(1,3) + M(2,2) + M(3,1) == -3
    w = -1;
end
end