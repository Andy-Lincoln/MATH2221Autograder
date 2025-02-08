function w=checkWin(M)
% if sum(M,1)==3;
%     w=1;
% elseif sum(M,2)==3;
%     w=1;
% elseif sum(M,1)==-3;
%     w=-1;
% elseif sum(M,2)==-3;
%     w=-1
% elseif sum(diag(M))==3;
%     w=1;
%     elseif sum(diag(M))==-3;
%         w=-1;
% else w=0
w=0;
    for i=1:3
        sum = M(i, 1)+M(i, 2)+M(i, 3);
        sums= M(1, i)+M(2, i)+M(3, i);
        sumss=M(1, 1)+M(2,2)+M(3,3);
        sumsss=M(3,1)+M(2,2)+M(1,3);
        if sum==3 
            w=1;
        elseif sum==-3
            w=-1;
        elseif sums==3 
            w=1;
        elseif sums==-3
            w=-1;
        elseif sumss==3 
            w=1;
        elseif sumsss==-3
            w=-1;
            
            
    end
    
    
end