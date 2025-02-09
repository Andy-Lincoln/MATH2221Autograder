function w=checkWin(M)
w=0;
u=sum(M,1);
v=sum(M,2);
for n=1:3
    if (u(n)==3) || (v(n)==3)
        w=1;
        return
    end
    if (u(n)==-3) || (v(n)==-3)
        w=-1;
        return
    end
end
x=trace(M);
if x==3
    w=1;
    return
elseif x==-3
    w=-1;
    return
end
y=M(3,1)+M(2,2)+M(1,3);
if y==3
    w=1;
    return
elseif y==-3
    w=-1;
    return
end
end

