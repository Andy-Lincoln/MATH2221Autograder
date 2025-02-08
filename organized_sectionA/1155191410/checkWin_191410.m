function w = checkWin(M)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
a=sum(M,1);
b=sum(M,2);
c=M(1,1)+M(2,2)+M(3,3);
d=M(1,3)+M(2,2)+M(3,1);
for i=1:3
    if a(i)==3||b(i)==3||c==3||d==3
        w=1;
        break
    elseif a(i)==-3||b(i)==-3||c==-3||d==-3
        w=-1;
        break
    else
        w=0;
    end
end
end

