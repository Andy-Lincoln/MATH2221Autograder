function[w]=checkWin(M)
A=sum(M,1)
B=sum(M,2)
a1=A(1)
a2=A(2)
a3=A(3)
b1=B(1)
b2=B(2)
b3=B(3)
if a1==3|a2==3|a3==3|b1==3|b2==3|b3==3|trace(M)==3|M(1,3)+M(2,2)+M(3,1)==3
    w=1
else if a1==-3|a2==-3|a3==-3|b1==-3|b2==-3|b3==-3|trace(M)==-3|M(1,3)+M(2,2)+M(3,1)==-3
        w=-1
    else w=0
    end
end
