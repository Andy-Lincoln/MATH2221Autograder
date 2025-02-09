function w=checkWin(M)
w = 0;
if ismember(3,sum(M,1)) || ismember(3,sum(M,2)) || ismember(3,sum(diag(M))) || (M(1,3)+M(2,2)+M(3,1)==3)
        w = 1
elseif ismember(-3,sum(M,1)) || ismember(-3,sum(M,2)) || ismember(-3,sum(diag(M))) || (M(1,3)+M(2,2)+M(3,1)==-3)
        w = -1
        
end
