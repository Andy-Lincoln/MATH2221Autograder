function w = checkWin(M)
    if (ismember(3,sum(M,1)) || ismember(3,sum(M,2)) || M(1,3)+M(2,2)+M(3,1) == 3)
        w = 1;
    else if (ismember(-3,sum(M,1)) || ismember(-3,sum(M,2)) || M(1,3) + M(2,2)+M(3,1) == -3)
        w = -1;
    else
        w = 0;
    end
    end
end