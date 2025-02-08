function w=checkWin(M)
A=sum(M,1);
B=sum(M,2);
C=M(1,1)+M(2,2)+M(3,3);
D=M(1,3)+M(2,2)+M(3,1);
if C==3 || D==3
    w=1
elseif C==-3|| D==-3
    w=-1
end
for i=1:3
    if A(i)==3 ||B(i)==3
       w=1
    elseif A(i)==-3 ||B(i)==-3
        w=-1
    end
end
  
if w~=1||w~=-1
    w=0
end



end
