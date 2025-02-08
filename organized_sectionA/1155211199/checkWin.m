function w = checkWin(M)
t = M(1,1) +M(2,2) +M(3,3);
k = M(1,3) + M(2,2) + M(3,1);
    if ((ismember(3,sum(M,1)))||(ismember(3,sum(M,2)))|| t == 3 ||k == 3)
        w =1;
    elseif ((ismember(-3,sum(M,1)))||(ismember(-3,sum(M,2)))|| t == -3 ||k == -3)
        w =-1;
    else
        w =0;
    end
end

