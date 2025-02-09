function w=checkWin(M)
a=sum(M,1);
b=sum(M,2);
c=sum(diag(M));
d=M(3,1)+M(2,2)+M(1,3);
w=0;
for i=a
    for j=b
        if j==3
            w=1;
        elseif j==-3
            w=-1;
        elseif i==3
            w=1;
        elseif i==-3
            w=-1;
        elseif c==3
            w=1;
        elseif c==-3
            w=-1;
        elseif d==3
            w=1;
        elseif d==-3
            w=-1;
        else
            w=0;
        end
    end
end



        