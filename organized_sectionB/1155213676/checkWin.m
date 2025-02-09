function w=checkWin(M)
w=0;
C= sum(M,1);
R= sum(M,2);
D=[M(1,1)+M(2,2)+M(3,3),M(1,3)+M(2,2)+M(3,1)];

for i=1:3
    if C(i) ==3
        w=1;
    elseif C(i)==-3
        w=-1;
    end
end

for j=1:3
    if R(j) ==3
        w=1;
    elseif R(j) ==-3
        w=-1;
    end
end

for d=1:2
    if D(d)==3
        w=1;
    elseif D(d)== -3
        w=-1;
    end
end
    
        
