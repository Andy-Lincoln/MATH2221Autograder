function w = checkWin(M)
w=0;
v = sum(M,1);
for i=1:3
if mod(v(i),3)==0 & v(i)~=0
    if v(i)==3
        w=1;
    else
        w=-1;
    end
    break;
end
end
v = sum(M,2);
for i=1:3
if mod(v(i),3)==0 & v(i)~=0
    if v(i)==3
        w=1;
    else
        w=-1;
    end
    break;
end
end
if sum(diag(M))==3 | M(1,3)+M(2,2)+M(3,1) == 3
    w=1;
    return;
elseif sum(diag(M))==-3 |  M(1,3)+M(2,2)+M(3,1) == -3
    w=-1;
    return;
end
end
